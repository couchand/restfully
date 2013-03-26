global class ly
{
    global static Map<String, Object> get( String url )
    {
        System.HttpRequest request = new System.HttpRequest();
        request.setEndpoint( url );
        request.setMethod( 'GET' );

        System.HttpResponse response = new Http().send( request );

        return (Map<String, Object>)System.JSON.deserializeUntyped( response.getBody() );
    }
}
