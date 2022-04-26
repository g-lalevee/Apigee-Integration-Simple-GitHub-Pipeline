var combined = context.getVariable('integrationresponse.combinedresponse');
var entity = context.getVariable('entity');
combined = JSON.parse(combined);
combined = combined[0].replace(/\s/g, '');
var _json = JSON.stringify(combined).replace(/\\/g,'');
_json = _json.substring(1).slice(0,-1);

context.setVariable('response.content', _json);
