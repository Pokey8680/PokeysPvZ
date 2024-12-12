.class public Lorg/restlet/engine/component/ComponentServerDispatcher;
.super Lorg/restlet/engine/TemplateDispatcher;
.source "ComponentServerDispatcher.java"


# instance fields
.field private componentContext:Lorg/restlet/engine/component/ComponentContext;


# direct methods
.method public constructor <init>(Lorg/restlet/engine/component/ComponentContext;)V
    .locals 0
    .param p1, "componentContext"    # Lorg/restlet/engine/component/ComponentContext;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/restlet/engine/TemplateDispatcher;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/restlet/engine/component/ComponentServerDispatcher;->componentContext:Lorg/restlet/engine/component/ComponentContext;

    .line 62
    return-void
.end method

.method private getComponentContext()Lorg/restlet/engine/component/ComponentContext;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/restlet/engine/component/ComponentServerDispatcher;->componentContext:Lorg/restlet/engine/component/ComponentContext;

    return-object v0
.end method


# virtual methods
.method public beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 3
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lorg/restlet/engine/TemplateDispatcher;->beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I

    move-result v0

    .line 70
    .local v0, "result":I
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getHostIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/data/Reference;->setBaseRef(Ljava/lang/String;)V

    .line 73
    return v0
.end method

.method protected doHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 2
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "result":I
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentServerDispatcher;->getComponentContext()Lorg/restlet/engine/component/ComponentContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/component/ComponentContext;->getComponentHelper()Lorg/restlet/engine/component/ComponentHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/component/ComponentHelper;->getServerRouter()Lorg/restlet/engine/component/ServerRouter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/restlet/engine/component/ServerRouter;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 83
    return v0
.end method
