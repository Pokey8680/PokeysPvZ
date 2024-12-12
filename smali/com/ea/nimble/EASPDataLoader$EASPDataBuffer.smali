.class public Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
.super Ljava/lang/Object;
.source "EASPDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/EASPDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EASPDataBuffer"
.end annotation


# instance fields
.field public m_decryptedByteBuffer:Ljava/nio/ByteBuffer;

.field public m_version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "ver"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_version:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_decryptedByteBuffer:Ljava/nio/ByteBuffer;

    .line 37
    return-void
.end method
