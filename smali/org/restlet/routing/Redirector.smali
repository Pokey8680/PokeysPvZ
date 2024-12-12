.class public Lorg/restlet/routing/Redirector;
.super Lorg/restlet/Restlet;
.source "Redirector.java"


# static fields
.field public static final MODE_CLIENT_FOUND:I = 0x2

.field public static final MODE_CLIENT_PERMANENT:I = 0x1

.field public static final MODE_CLIENT_SEE_OTHER:I = 0x3

.field public static final MODE_CLIENT_TEMPORARY:I = 0x4

.field public static final MODE_SERVER_INBOUND:I = 0x7

.field public static final MODE_SERVER_OUTBOUND:I = 0x6


# instance fields
.field protected volatile mode:I

.field protected volatile targetTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/restlet/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "targetTemplate"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/routing/Redirector;-><init>(Lorg/restlet/Context;Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "targetPattern"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lorg/restlet/Restlet;-><init>(Lorg/restlet/Context;)V

    .line 190
    iput-object p2, p0, Lorg/restlet/routing/Redirector;->targetTemplate:Ljava/lang/String;

    .line 191
    iput p3, p0, Lorg/restlet/routing/Redirector;->mode:I

    .line 192
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/restlet/routing/Redirector;->mode:I

    return v0
.end method

.method protected getTargetRef(Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/data/Reference;
    .locals 4
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 216
    new-instance v0, Lorg/restlet/routing/Template;

    iget-object v1, p0, Lorg/restlet/routing/Redirector;->targetTemplate:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/restlet/routing/Template;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "rt":Lorg/restlet/routing/Template;
    invoke-virtual {p0}, Lorg/restlet/routing/Redirector;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/routing/Template;->setLogger(Ljava/util/logging/Logger;)V

    .line 220
    new-instance v1, Lorg/restlet/data/Reference;

    iget-object v2, p0, Lorg/restlet/routing/Redirector;->targetTemplate:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    new-instance v1, Lorg/restlet/data/Reference;

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v0, p1, p2}, Lorg/restlet/routing/Template;->format(Lorg/restlet/Request;Lorg/restlet/Response;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Reference;Ljava/lang/String;)V

    .line 226
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/restlet/data/Reference;

    invoke-virtual {v0, p1, p2}, Lorg/restlet/routing/Template;->format(Lorg/restlet/Request;Lorg/restlet/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getTargetTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/restlet/routing/Redirector;->targetTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 5
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 249
    invoke-virtual {p0, p1, p2}, Lorg/restlet/routing/Redirector;->getTargetRef(Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/data/Reference;

    move-result-object v0

    .line 251
    .local v0, "targetRef":Lorg/restlet/data/Reference;
    iget v1, p0, Lorg/restlet/routing/Redirector;->mode:I

    packed-switch v1, :pswitch_data_0

    .line 307
    :goto_0
    :pswitch_0
    return-void

    .line 253
    :pswitch_1
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {p0}, Lorg/restlet/routing/Redirector;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permanently redirecting client to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 258
    :cond_0
    invoke-virtual {p2, v0}, Lorg/restlet/Response;->redirectPermanent(Lorg/restlet/data/Reference;)V

    goto :goto_0

    .line 262
    :pswitch_2
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {p0}, Lorg/restlet/routing/Redirector;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirecting client to found location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 267
    :cond_1
    invoke-virtual {p2, v0}, Lorg/restlet/Response;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 268
    sget-object v1, Lorg/restlet/data/Status;->REDIRECTION_FOUND:Lorg/restlet/data/Status;

    invoke-virtual {p2, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_0

    .line 272
    :pswitch_3
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    invoke-virtual {p0}, Lorg/restlet/routing/Redirector;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirecting client to another location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 277
    :cond_2
    invoke-virtual {p2, v0}, Lorg/restlet/Response;->redirectSeeOther(Lorg/restlet/data/Reference;)V

    goto :goto_0

    .line 281
    :pswitch_4
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    invoke-virtual {p0}, Lorg/restlet/routing/Redirector;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Temporarily redirecting client to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 286
    :cond_3
    invoke-virtual {p2, v0}, Lorg/restlet/Response;->redirectTemporary(Lorg/restlet/data/Reference;)V

    goto/16 :goto_0

    .line 290
    :pswitch_5
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 291
    invoke-virtual {p0}, Lorg/restlet/routing/Redirector;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirecting via client dispatcher to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 295
    :cond_4
    invoke-virtual {p0, v0, p1, p2}, Lorg/restlet/routing/Redirector;->outboundServerRedirect(Lorg/restlet/data/Reference;Lorg/restlet/Request;Lorg/restlet/Response;)V

    goto/16 :goto_0

    .line 299
    :pswitch_6
    invoke-virtual {p1}, Lorg/restlet/Request;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 300
    invoke-virtual {p0}, Lorg/restlet/routing/Redirector;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirecting via server dispatcher to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 304
    :cond_5
    invoke-virtual {p0, v0, p1, p2}, Lorg/restlet/routing/Redirector;->inboundServerRedirect(Lorg/restlet/data/Reference;Lorg/restlet/Request;Lorg/restlet/Response;)V

    goto/16 :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected inboundServerRedirect(Lorg/restlet/data/Reference;Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "targetRef"    # Lorg/restlet/data/Reference;
    .param p2, "request"    # Lorg/restlet/Request;
    .param p3, "response"    # Lorg/restlet/Response;

    .prologue
    .line 325
    invoke-virtual {p0}, Lorg/restlet/routing/Redirector;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Context;->getServerDispatcher()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/restlet/routing/Redirector;->serverRedirect(Lorg/restlet/Restlet;Lorg/restlet/data/Reference;Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 327
    return-void
.end method

.method protected outboundServerRedirect(Lorg/restlet/data/Reference;Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 4
    .param p1, "targetRef"    # Lorg/restlet/data/Reference;
    .param p2, "request"    # Lorg/restlet/Request;
    .param p3, "response"    # Lorg/restlet/Response;

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-virtual {p0}, Lorg/restlet/routing/Redirector;->getApplication()Lorg/restlet/Application;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 348
    .local v0, "next":Lorg/restlet/Restlet;
    :goto_0
    if-nez v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lorg/restlet/routing/Redirector;->getContext()Lorg/restlet/Context;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Context;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v0

    .line 352
    :cond_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/restlet/routing/Redirector;->serverRedirect(Lorg/restlet/Restlet;Lorg/restlet/data/Reference;Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 353
    invoke-virtual {p3}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 357
    invoke-virtual {p3}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    check-cast v1, Lorg/restlet/data/Reference;

    invoke-virtual {v2, v1}, Lorg/restlet/representation/Representation;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 359
    :cond_1
    return-void

    .line 345
    .end local v0    # "next":Lorg/restlet/Restlet;
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/routing/Redirector;->getApplication()Lorg/restlet/Application;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Application;->getOutboundRoot()Lorg/restlet/Restlet;

    move-result-object v0

    goto :goto_0
.end method

.method protected rewrite(Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;
    .locals 0
    .param p1, "initialEntity"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 371
    return-object p1
.end method

.method protected serverRedirect(Lorg/restlet/Restlet;Lorg/restlet/data/Reference;Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 8
    .param p1, "next"    # Lorg/restlet/Restlet;
    .param p2, "targetRef"    # Lorg/restlet/data/Reference;
    .param p3, "request"    # Lorg/restlet/Request;
    .param p4, "response"    # Lorg/restlet/Response;

    .prologue
    .line 392
    if-nez p1, :cond_1

    .line 393
    invoke-virtual {p0}, Lorg/restlet/routing/Redirector;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No next Restlet provided for server redirection to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-virtual {p3}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v3

    .line 400
    .local v3, "resourceRef":Lorg/restlet/data/Reference;
    invoke-virtual {v3}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v0

    .line 403
    .local v0, "baseRef":Lorg/restlet/data/Reference;
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Lorg/restlet/Request;->setProtocol(Lorg/restlet/data/Protocol;)V

    .line 406
    invoke-virtual {p3, p2}, Lorg/restlet/Request;->setResourceRef(Lorg/restlet/data/Reference;)V

    .line 407
    invoke-virtual {p3}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    const-string v6, "org.restlet.http.headers"

    invoke-interface {v5, v6}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {p1, p3, p4}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 411
    invoke-virtual {p4}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/restlet/routing/Redirector;->rewrite(Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v5

    invoke-virtual {p4, v5}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 412
    invoke-virtual {p4}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    const-string v6, "org.restlet.http.headers"

    invoke-interface {v5, v6}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-virtual {p3, v3}, Lorg/restlet/Request;->setResourceRef(Lorg/restlet/data/Reference;)V

    .line 416
    invoke-virtual {p4}, Lorg/restlet/Response;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 417
    new-instance v4, Lorg/restlet/routing/Template;

    iget-object v5, p0, Lorg/restlet/routing/Redirector;->targetTemplate:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/restlet/routing/Template;-><init>(Ljava/lang/String;)V

    .line 418
    .local v4, "rt":Lorg/restlet/routing/Template;
    invoke-virtual {p0}, Lorg/restlet/routing/Redirector;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/restlet/routing/Template;->setLogger(Ljava/util/logging/Logger;)V

    .line 419
    invoke-virtual {p4}, Lorg/restlet/Response;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Lorg/restlet/routing/Template;->parse(Ljava/lang/String;Lorg/restlet/Request;)I

    move-result v1

    .line 422
    .local v1, "matched":I
    if-lez v1, :cond_0

    .line 423
    invoke-virtual {p3}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    const-string v6, "rr"

    invoke-interface {v5, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 426
    .local v2, "remainingPart":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Lorg/restlet/Response;->setLocationRef(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 442
    iput p1, p0, Lorg/restlet/routing/Redirector;->mode:I

    .line 443
    return-void
.end method

.method public setTargetTemplate(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetTemplate"    # Ljava/lang/String;

    .prologue
    .line 452
    iput-object p1, p0, Lorg/restlet/routing/Redirector;->targetTemplate:Ljava/lang/String;

    .line 453
    return-void
.end method
