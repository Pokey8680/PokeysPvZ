.class public abstract Lorg/restlet/engine/adapter/ClientCall;
.super Lorg/restlet/engine/adapter/Call;
.source "ClientCall.java"


# instance fields
.field private volatile helper:Lorg/restlet/engine/adapter/HttpClientHelper;


# direct methods
.method public constructor <init>(Lorg/restlet/engine/adapter/HttpClientHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "helper"    # Lorg/restlet/engine/adapter/HttpClientHelper;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "requestUri"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/restlet/engine/adapter/Call;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/restlet/engine/adapter/ClientCall;->helper:Lorg/restlet/engine/adapter/HttpClientHelper;

    .line 88
    invoke-virtual {p0, p2}, Lorg/restlet/engine/adapter/ClientCall;->setMethod(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p3}, Lorg/restlet/engine/adapter/ClientCall;->setRequestUri(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lorg/restlet/engine/adapter/ClientCall;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/adapter/ClientCall;->setClientAddress(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static getLocalAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    .local v0, "e":Ljava/net/UnknownHostException;
    :goto_0
    return-object v1

    .line 68
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_0
    move-exception v0

    .line 69
    .restart local v0    # "e":Ljava/net/UnknownHostException;
    const-string v1, "127.0.0.1"

    goto :goto_0
.end method

.method private getUnClosedResponseEntityStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 219
    const/4 v3, 0x0

    .line 221
    .local v3, "result":Ljava/io/InputStream;
    if-eqz p1, :cond_0

    .line 223
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lez v4, :cond_1

    .line 224
    move-object v3, p1

    .line 242
    :cond_0
    :goto_0
    return-object v3

    .line 226
    :cond_1
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 228
    .local v2, "is":Ljava/io/PushbackInputStream;
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 230
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 231
    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    move-object v3, v2

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    .end local v2    # "is":Ljava/io/PushbackInputStream;
    :catch_0
    move-exception v1

    .line 236
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ClientCall;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v6, "End of response entity stream."

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected getContentLength()J
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ClientCall;->getResponseHeaders()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->getContentLength(Lorg/restlet/util/Series;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHelper()Lorg/restlet/engine/adapter/HttpClientHelper;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/restlet/engine/adapter/ClientCall;->helper:Lorg/restlet/engine/adapter/HttpClientHelper;

    return-object v0
.end method

.method public abstract getRequestEntityChannel()Ljava/nio/channels/WritableByteChannel;
.end method

.method public abstract getRequestEntityStream()Ljava/io/OutputStream;
.end method

.method public abstract getRequestHeadStream()Ljava/io/OutputStream;
.end method

.method public getResponseEntity(Lorg/restlet/Response;)Lorg/restlet/representation/Representation;
    .locals 10
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 143
    const/4 v2, 0x0

    .line 145
    .local v2, "result":Lorg/restlet/representation/Representation;
    const-wide/16 v4, -0x1

    .line 148
    .local v4, "size":J
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ClientCall;->getResponseHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    .line 149
    .local v1, "responseHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    const-string v7, "Transfer-Encoding"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "transferEncoding":Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v7, "identity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 153
    const-wide/16 v4, -0x1

    .line 158
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ClientCall;->getMethod()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {v8}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v7

    invoke-virtual {v7}, Lorg/restlet/data/Status;->isInformational()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v7

    sget-object v8, Lorg/restlet/data/Status;->REDIRECTION_NOT_MODIFIED:Lorg/restlet/data/Status;

    invoke-virtual {v7, v8}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v7

    sget-object v8, Lorg/restlet/data/Status;->SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual {v7, v8}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v7

    sget-object v8, Lorg/restlet/data/Status;->SUCCESS_RESET_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual {v7, v8}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 166
    invoke-virtual {p0, v4, v5}, Lorg/restlet/engine/adapter/ClientCall;->getResponseEntityStream(J)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/restlet/engine/adapter/ClientCall;->getUnClosedResponseEntityStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 167
    .local v3, "stream":Ljava/io/InputStream;
    invoke-virtual {p0, v4, v5}, Lorg/restlet/engine/adapter/ClientCall;->getResponseEntityChannel(J)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    .line 169
    .local v0, "channel":Ljava/nio/channels/ReadableByteChannel;
    if-eqz v3, :cond_3

    .line 170
    invoke-virtual {p0, v3}, Lorg/restlet/engine/adapter/ClientCall;->getRepresentation(Ljava/io/InputStream;)Lorg/restlet/representation/Representation;

    move-result-object v2

    .line 176
    .end local v0    # "channel":Ljava/nio/channels/ReadableByteChannel;
    .end local v3    # "stream":Ljava/io/InputStream;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 177
    invoke-virtual {v2, v4, v5}, Lorg/restlet/representation/Representation;->setSize(J)V

    .line 180
    const-wide/16 v8, -0x1

    cmp-long v7, v4, v8

    if-nez v7, :cond_1

    .line 181
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ClientCall;->getLogger()Ljava/util/logging/Logger;

    move-result-object v7

    const-string v8, "The length of the message body is unknown. The entity must be handled carefully and consumed entirely in order to surely release the connection."

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 185
    :cond_1
    invoke-static {v1, v2}, Lorg/restlet/engine/header/HeaderUtils;->extractEntityHeaders(Ljava/lang/Iterable;Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v2

    .line 187
    return-object v2

    .line 155
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ClientCall;->getContentLength()J

    move-result-wide v4

    goto :goto_0

    .line 171
    .restart local v0    # "channel":Ljava/nio/channels/ReadableByteChannel;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :cond_3
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0, v0}, Lorg/restlet/engine/adapter/ClientCall;->getRepresentation(Ljava/nio/channels/ReadableByteChannel;)Lorg/restlet/representation/Representation;

    move-result-object v2

    goto :goto_1
.end method

.method public abstract getResponseEntityChannel(J)Ljava/nio/channels/ReadableByteChannel;
.end method

.method public abstract getResponseEntityStream(J)Ljava/io/InputStream;
.end method

.method protected isClientKeepAlive()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method protected isServerKeepAlive()Z
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ClientCall;->getResponseHeaders()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isConnectionClose(Lorg/restlet/util/Series;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendRequest(Lorg/restlet/Request;)Lorg/restlet/data/Status;
    .locals 10
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    const/4 v1, 0x0

    .line 264
    const/4 v5, 0x0

    .line 265
    .local v5, "result":Lorg/restlet/data/Status;
    invoke-virtual {p1}, Lorg/restlet/Request;->isEntityAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 269
    .local v1, "entity":Lorg/restlet/representation/Representation;
    :cond_0
    invoke-static {}, Lorg/restlet/engine/ConnectorHelper;->getConnectorService()Lorg/restlet/service/ConnectorService;

    move-result-object v0

    .line 271
    .local v0, "connectorService":Lorg/restlet/service/ConnectorService;
    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0, v1}, Lorg/restlet/service/ConnectorService;->beforeSend(Lorg/restlet/representation/Representation;)V

    .line 276
    :cond_1
    if-eqz v1, :cond_2

    .line 284
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ClientCall;->getRequestEntityStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 285
    .local v4, "requestStream":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ClientCall;->getRequestEntityChannel()Ljava/nio/channels/WritableByteChannel;

    move-result-object v3

    .line 287
    .local v3, "requestChannel":Ljava/nio/channels/WritableByteChannel;
    if-eqz v3, :cond_5

    .line 288
    invoke-virtual {v1, v3}, Lorg/restlet/representation/Representation;->write(Ljava/nio/channels/WritableByteChannel;)V

    .line 289
    invoke-interface {v3}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 299
    .end local v3    # "requestChannel":Ljava/nio/channels/WritableByteChannel;
    .end local v4    # "requestStream":Ljava/io/OutputStream;
    :cond_2
    :goto_0
    new-instance v5, Lorg/restlet/data/Status;

    .end local v5    # "result":Lorg/restlet/data/Status;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ClientCall;->getStatusCode()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ClientCall;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/restlet/data/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    .restart local v5    # "result":Lorg/restlet/data/Status;
    if-eqz v1, :cond_3

    .line 309
    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->release()V

    .line 313
    :cond_3
    if-eqz v0, :cond_4

    .line 314
    invoke-virtual {v0, v1}, Lorg/restlet/service/ConnectorService;->afterSend(Lorg/restlet/representation/Representation;)V

    .line 318
    :cond_4
    :goto_1
    return-object v5

    .line 290
    .restart local v3    # "requestChannel":Ljava/nio/channels/WritableByteChannel;
    .restart local v4    # "requestStream":Ljava/io/OutputStream;
    :cond_5
    if-eqz v4, :cond_2

    .line 291
    :try_start_1
    invoke-virtual {v1, v4}, Lorg/restlet/representation/Representation;->write(Ljava/io/OutputStream;)V

    .line 292
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 293
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 300
    .end local v3    # "requestChannel":Ljava/nio/channels/WritableByteChannel;
    .end local v4    # "requestStream":Ljava/io/OutputStream;
    .end local v5    # "result":Lorg/restlet/data/Status;
    :catch_0
    move-exception v2

    .line 301
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ClientCall;->getHelper()Lorg/restlet/engine/adapter/HttpClientHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/adapter/HttpClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "An error occured during the communication with the remote HTTP server."

    invoke-virtual {v6, v7, v8, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    new-instance v5, Lorg/restlet/data/Status;

    sget-object v6, Lorg/restlet/data/Status;->CONNECTOR_ERROR_COMMUNICATION:Lorg/restlet/data/Status;

    invoke-direct {v5, v6, v2}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    .restart local v5    # "result":Lorg/restlet/data/Status;
    if-eqz v1, :cond_6

    .line 309
    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->release()V

    .line 313
    :cond_6
    if-eqz v0, :cond_4

    .line 314
    invoke-virtual {v0, v1}, Lorg/restlet/service/ConnectorService;->afterSend(Lorg/restlet/representation/Representation;)V

    goto :goto_1

    .line 308
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v5    # "result":Lorg/restlet/data/Status;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_7

    .line 309
    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->release()V

    .line 313
    :cond_7
    if-eqz v0, :cond_8

    .line 314
    invoke-virtual {v0, v1}, Lorg/restlet/service/ConnectorService;->afterSend(Lorg/restlet/representation/Representation;)V

    :cond_8
    throw v6
.end method

.method public sendRequest(Lorg/restlet/Request;Lorg/restlet/Response;Lorg/restlet/Uniform;)V
    .locals 2
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "callback"    # Lorg/restlet/Uniform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 334
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Currently callbacks are not available for this connector."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method protected shouldRequestBeChunked(Lorg/restlet/Request;)Z
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 344
    invoke-virtual {p1}, Lorg/restlet/Request;->isEntityAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->hasKnownSize()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
