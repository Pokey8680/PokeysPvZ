.class Lorg/restlet/engine/connector/Connection$1;
.super Lorg/restlet/engine/io/ReadableSocketChannel;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/connector/Connection;->createReadableSelectionChannel()Lorg/restlet/engine/io/ReadableSelectionChannel;
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
    .line 228
    .local p0, "this":Lorg/restlet/engine/connector/Connection$1;, "Lorg/restlet/engine/connector/Connection.1;"
    iput-object p1, p0, Lorg/restlet/engine/connector/Connection$1;->this$0:Lorg/restlet/engine/connector/Connection;

    invoke-direct {p0, p2, p3}, Lorg/restlet/engine/io/ReadableSocketChannel;-><init>(Ljava/nio/channels/SocketChannel;Lorg/restlet/util/SelectionRegistration;)V

    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lorg/restlet/engine/connector/Connection$1;, "Lorg/restlet/engine/connector/Connection.1;"
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection$1;->this$0:Lorg/restlet/engine/connector/Connection;

    invoke-virtual {v0}, Lorg/restlet/engine/connector/Connection;->onActivity()V

    .line 232
    invoke-super {p0, p1}, Lorg/restlet/engine/io/ReadableSocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
