const { Firestore } = require('@google-cloud/firestore');
const firestore = new Firestore();

async function storePrediction({ id, result, suggestion, createdAt }) {
    const docRef = firestore.collection('predictions').doc(id);
    await docRef.set({ id, result, suggestion, createdAt });
}

module.exports = { storePrediction };
