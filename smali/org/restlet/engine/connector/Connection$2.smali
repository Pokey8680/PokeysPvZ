.class Lorg/restlet/engine/connector/Connection$2;
.super Lorg/restlet/engine/io/WritableSocketChannel;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/connector/Connection;->createWritableSelectionChannel()Lorg/restlet/engine/io/WritableSelectionChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/engine/connector/Connection;


# direct methods
.method constructor <init>(Lorg/restlet/engine/connector/Connection;Ljava/nio/channels/SocketChannel;Lorg/restlet/util/SelectionRegistration;)V
    .locals 0
    .param p2, "x0"    # Ljava/nio/channels/SocketChannel;
    .param p3, "x1"    # Lorg/restlet/util/SelectionRegistration;

    .prologue
    .line 243
    .local p0, "this":Lorg/restlet/engine/connector/Connection$2;, "Lorg/restlet/engine/connector/Connection.2;"
    iput-object p1, p0, Lorg/restlet/engine/connector/Connection$2;->this$0:Lorg/restlet/engine/connector/Connection;

    invoke-direct {p0, p2, p3}, Lorg/restlet/engine/io/WritableSocketChannel;-><init>(Ljava/nio/channels/SocketChannel;Lorg/restlet/util/SelectionRegistration;)V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lorg/restlet/engine/connector/Connection$2;, "Lorg/restlet/engine/connector/Connection.2;"
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection$2;->this$0:Lorg/restlet/engine/connector/Connection;

    invoke-virtual {v0}, Lorg/restlet/engine/connector/Connection;->onActivity()V

    .line 247
    invoke-super {p0, p1}, Lorg/restlet/engine/io/WritableSocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
