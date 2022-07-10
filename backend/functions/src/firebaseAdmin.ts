import * as admin from "firebase-admin";
import serviceKey = require('../serviceAccountKey.json');



admin.initializeApp({
  credential: admin.credential.cert(serviceKey as admin.ServiceAccount),
  databaseURL: "https://smashtest-001.firebaseio.com",
  projectId: "smashtest-001",
});

export default admin;