.class Lorg/restlet/engine/Engine$2;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/Engine;->registerUrlFactory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/engine/Engine;


# direct methods
.method constructor <init>(Lorg/restlet/engine/Engine;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lorg/restlet/engine/Engine$2;->this$0:Lorg/restlet/engine/Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 993
    new-instance v0, Lorg/restlet/engine/Engine$2$1;

    invoke-direct {v0, p0}, Lorg/restlet/engine/Engine$2$1;-><init>(Lorg/restlet/engine/Engine$2;)V

    .line 1034
    .local v0, "result":Ljava/net/URLStreamHandler;
    return-object v0
.end method
