/* eslint-disable @typescript-eslint/no-explicit-any */
import * as functions from "firebase-functions";
import * as fs from 'fs';
import { parse } from 'csv-parse';
import admin from "./firebaseAdmin";

//Local Host
process.env.FIRESTORE_EMULATOR_HOST = "localhost:8080"

async function seedData() {
  functions.logger.info("[SEED] - START");

  const poolBatch: any[] = [];

  var lineNumber = 0;

  let batch = admin.firestore().batch();

  await new Promise<void>((resolve) => {
    fs.createReadStream("functions/src/SeedFiles/world-cities.csv")
      .pipe(parse({ delimiter: ",", fromLine: 1 }))
      .on('data', async function (row) {
        lineNumber++;
        //Add Cities
        let country: string = row[1];

        country = country.replace("/", "-");

        let city: string = row[0];

        city = city.replace("/", "-");

        var docrefCity = admin.firestore().collection("Countries").doc(country).collection("Cities").doc(city);

        batch.set(docrefCity, {
          "subCountry": row[2] ?? null,
          "geonameid": row[3] ?? null
        });

        var docrefCountry = admin.firestore().collection("Countries").doc(country);

        batch.set(docrefCountry, {
          "name": country
        })
        
        if ((lineNumber) % 250 === 0) {
          console.log(`Writing record ${lineNumber}`);
          poolBatch.push(batch.commit());
          batch = admin.firestore().batch();
        }
      })
      .on('finish', async () => {
        for (const key in poolBatch) {
          if (poolBatch.hasOwnProperty(key)) {
            const element = poolBatch[key];
            await element.catch((err: any) => console.log(err));
          }
        }
        resolve();
      });
  });

  functions.logger.info("[SEED] - COMPLETE");
}

//Execute Seed
seedData();