from pyramid.view import view_config
from pyramid.response import Response
from hackathonvisagio import find_topics, model_saude, model

@view_config(route_name='getinfo')
async def getinfo(request):
    print("entrei getinfo")
    return await Response(find_topics(request.matchdict['text'], model_saude, model))