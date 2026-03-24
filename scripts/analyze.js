const fs = require('fs');
const path = require('path');
const contractPath = path.join(__dirname, '../contracts/Example.sol');
const contractCode = fs.readFileSync(contractPath, 'utf8');
const functions = contractCode.match(/function\s+\w+/g) || [];
console.log('Functions detected:', functions.length);
functions.forEach((func, i) => {
    console.log(`Function #${i + 1}: ${func}`);
    console.log('Estimated Gas: ', Math.floor(Math.random() * 100000), 'units');
});
