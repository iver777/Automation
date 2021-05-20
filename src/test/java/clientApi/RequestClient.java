package clientApi;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;

public abstract class RequestClient {
    //se crea un cliente
    Client client = ClientBuilder.newBuilder().build();

    public abstract ResponseInformation send(RequestInformation request);
}
