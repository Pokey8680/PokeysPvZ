.class Lorg/restlet/engine/Engine$2$1;
.super Ljava/net/URLStreamHandler;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/Engine$2;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/restlet/engine/Engine$2;


# direct methods
.method constructor <init>(Lorg/restlet/engine/Engine$2;)V
    .locals 0

    .prologue
    .line 993
    iput-object p1, p0, Lorg/restlet/engine/Engine$2$1;->this$1:Lorg/restlet/engine/Engine$2;

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 998
    new-instance v0, Lorg/restlet/engine/Engine$2$1$1;

    invoke-direct {v0, p0, p1}, Lorg/restlet/engine/Engine$2$1$1;-><init>(Lorg/restlet/engine/Engine$2$1;Ljava/net/URL;)V

    return-object v0
.end method
