package clientApi;


public class FactoryRequest {
    //solicitud en caso de que sea put,post, get, delete.
    public static RequestClient make (String type){
        RequestClient client;
        switch (type){
            case "put":
                client = new RequestPUT();
                break;
            case "post":
                client = new RequestPOST();
                break;
            case "get":
                client = new RequestGET();
                break;
            case "delete":
                client = new RequestDELETE();
                break;
            default:
                client = new RequestGET();
                break;
        }
        return client;
    }
}
