var combined = context.getVariable('integrationresponse.combinedresponse');
combined = JSON.parse(combined);
var _json = JSON.stringify(combined[Object.keys(combined)[0]] );
context.setVariable('response.content', _json);
