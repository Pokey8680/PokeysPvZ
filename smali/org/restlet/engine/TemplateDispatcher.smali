.class public Lorg/restlet/engine/TemplateDispatcher;
.super Lorg/restlet/routing/Filter;
.source "TemplateDispatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/restlet/routing/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHandle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 2
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 61
    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/representation/Representation;->setLocationRef(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 6
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-virtual {p1}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    .line 81
    .local v0, "protocol":Lorg/restlet/data/Protocol;
    if-nez v0, :cond_0

    .line 82
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Unable to determine the protocol to use for this call."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/restlet/data/Reference;->toString(ZZ)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "targetUri":Ljava/lang/String;
    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    new-instance v2, Lorg/restlet/routing/Template;

    invoke-direct {v2, v1}, Lorg/restlet/routing/Template;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, "template":Lorg/restlet/routing/Template;
    invoke-virtual {v2, p1, p2}, Lorg/restlet/routing/Template;->format(Lorg/restlet/Request;Lorg/restlet/Response;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/restlet/Request;->setResourceRef(Ljava/lang/String;)V

    .line 96
    .end local v2    # "template":Lorg/restlet/routing/Template;
    :cond_1
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/restlet/Request;->setOriginalRef(Lorg/restlet/data/Reference;)V

    .line 97
    return v5
.end method
