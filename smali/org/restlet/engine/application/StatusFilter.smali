.class public Lorg/restlet/engine/application/StatusFilter;
.super Lorg/restlet/routing/Filter;
.source "StatusFilter.java"


# instance fields
.field private volatile contactEmail:Ljava/lang/String;

.field private volatile homeRef:Lorg/restlet/data/Reference;

.field private volatile overwriting:Z

.field private volatile statusService:Lorg/restlet/service/StatusService;


# direct methods
.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/service/StatusService;)V
    .locals 3
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "statusService"    # Lorg/restlet/service/StatusService;

    .prologue
    .line 111
    invoke-virtual {p2}, Lorg/restlet/service/StatusService;->isOverwriting()Z

    move-result v0

    invoke-virtual {p2}, Lorg/restlet/service/StatusService;->getContactEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/restlet/service/StatusService;->getHomeRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/restlet/engine/application/StatusFilter;-><init>(Lorg/restlet/Context;ZLjava/lang/String;Lorg/restlet/data/Reference;)V

    .line 113
    iput-object p2, p0, Lorg/restlet/engine/application/StatusFilter;->statusService:Lorg/restlet/service/StatusService;

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;ZLjava/lang/String;Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "overwriting"    # Z
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "homeRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lorg/restlet/routing/Filter;-><init>(Lorg/restlet/Context;)V

    .line 96
    iput-boolean p2, p0, Lorg/restlet/engine/application/StatusFilter;->overwriting:Z

    .line 97
    iput-object p3, p0, Lorg/restlet/engine/application/StatusFilter;->contactEmail:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lorg/restlet/engine/application/StatusFilter;->homeRef:Lorg/restlet/data/Reference;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/engine/application/StatusFilter;->statusService:Lorg/restlet/service/StatusService;

    .line 100
    return-void
.end method


# virtual methods
.method public afterHandle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 128
    invoke-virtual {p2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    invoke-virtual {p2, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 133
    :cond_0
    invoke-virtual {p2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/restlet/engine/application/StatusFilter;->isOverwriting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    :cond_1
    invoke-virtual {p2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/restlet/engine/application/StatusFilter;->getRepresentation(Lorg/restlet/data/Status;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 138
    :cond_2
    return-void
.end method

.method protected doHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 4
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 155
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/restlet/routing/Filter;->doHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/restlet/engine/application/StatusFilter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception or error caught in status service"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    invoke-virtual {p0, v0, p1, p2}, Lorg/restlet/engine/application/StatusFilter;->getStatus(Ljava/lang/Throwable;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/data/Status;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_0
.end method

.method public getContactEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/restlet/engine/application/StatusFilter;->contactEmail:Ljava/lang/String;

    return-object v0
.end method

.method protected getDefaultRepresentation(Lorg/restlet/data/Status;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/representation/Representation;
    .locals 4
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "request"    # Lorg/restlet/Request;
    .param p3, "response"    # Lorg/restlet/Response;

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<html>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, "<head>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "   <title>Status page</title>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, "</head>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "<body style=\"font-family: sans-serif;\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "<p style=\"font-size: 1.2em;font-weight: bold;margin: 1em 0px;\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0, p1}, Lorg/restlet/engine/application/StatusFilter;->getStatusInfo(Lorg/restlet/data/Status;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/util/StringUtils;->htmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, "</p>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p1}, Lorg/restlet/data/Status;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "<p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Lorg/restlet/data/Status;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/util/StringUtils;->htmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, "</p>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_0
    const-string v1, "<p>You can get technical details <a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1}, Lorg/restlet/data/Status;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, "\">here</a>.<br>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, Lorg/restlet/engine/application/StatusFilter;->getContactEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 211
    const-string v1, "For further assistance, you can contact the <a href=\"mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p0}, Lorg/restlet/engine/application/StatusFilter;->getContactEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, "\">administrator</a>.<br>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/application/StatusFilter;->getHomeRef()Lorg/restlet/data/Reference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 217
    const-string v1, "Please continue your visit at our <a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Lorg/restlet/engine/application/StatusFilter;->getHomeRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, "\">home page</a>.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_2
    const-string v1, "</p>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, "</body>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, "</html>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v1, Lorg/restlet/representation/StringRepresentation;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/restlet/data/MediaType;->TEXT_HTML:Lorg/restlet/data/MediaType;

    invoke-direct {v1, v2, v3}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;)V

    return-object v1
.end method

.method public getHomeRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/restlet/engine/application/StatusFilter;->homeRef:Lorg/restlet/data/Reference;

    return-object v0
.end method

.method protected getRepresentation(Lorg/restlet/data/Status;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/representation/Representation;
    .locals 5
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "request"    # Lorg/restlet/Request;
    .param p3, "response"    # Lorg/restlet/Response;

    .prologue
    .line 253
    const/4 v1, 0x0

    .line 256
    .local v1, "result":Lorg/restlet/representation/Representation;
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/StatusFilter;->getStatusService()Lorg/restlet/service/StatusService;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lorg/restlet/service/StatusService;->getRepresentation(Lorg/restlet/data/Status;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/representation/Representation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 263
    :goto_0
    if-nez v1, :cond_0

    .line 264
    invoke-virtual {p0, p1, p2, p3}, Lorg/restlet/engine/application/StatusFilter;->getDefaultRepresentation(Lorg/restlet/data/Status;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 267
    :cond_0
    return-object v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/restlet/engine/application/StatusFilter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to get the custom status representation"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected getStatus(Ljava/lang/Throwable;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/data/Status;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "request"    # Lorg/restlet/Request;
    .param p3, "response"    # Lorg/restlet/Response;

    .prologue
    .line 286
    invoke-virtual {p0}, Lorg/restlet/engine/application/StatusFilter;->getStatusService()Lorg/restlet/service/StatusService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/restlet/service/StatusService;->getStatus(Ljava/lang/Throwable;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/data/Status;

    move-result-object v0

    return-object v0
.end method

.method protected getStatusInfo(Lorg/restlet/data/Status;)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;

    .prologue
    .line 299
    invoke-virtual {p1}, Lorg/restlet/data/Status;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/restlet/data/Status;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "No information available for this result status"

    goto :goto_0
.end method

.method public getStatusService()Lorg/restlet/service/StatusService;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/restlet/engine/application/StatusFilter;->statusService:Lorg/restlet/service/StatusService;

    return-object v0
.end method

.method public isOverwriting()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lorg/restlet/engine/application/StatusFilter;->overwriting:Z

    return v0
.end method

.method public setContactEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Lorg/restlet/engine/application/StatusFilter;->contactEmail:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setHomeRef(Lorg/restlet/data/Reference;)V
    .locals 0
    .param p1, "homeRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 338
    iput-object p1, p0, Lorg/restlet/engine/application/StatusFilter;->homeRef:Lorg/restlet/data/Reference;

    .line 339
    return-void
.end method

.method public setOverwriting(Z)V
    .locals 0
    .param p1, "overwriting"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lorg/restlet/engine/application/StatusFilter;->overwriting:Z

    .line 349
    return-void
.end method

.method public setStatusService(Lorg/restlet/service/StatusService;)V
    .locals 0
    .param p1, "statusService"    # Lorg/restlet/service/StatusService;

    .prologue
    .line 358
    iput-object p1, p0, Lorg/restlet/engine/application/StatusFilter;->statusService:Lorg/restlet/service/StatusService;

    .line 359
    return-void
.end method
