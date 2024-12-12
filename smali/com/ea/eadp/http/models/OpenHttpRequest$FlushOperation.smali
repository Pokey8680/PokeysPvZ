.class public abstract Lcom/ea/eadp/http/models/OpenHttpRequest$FlushOperation;
.super Lcom/ea/eadp/http/models/OpenHttpRequest$Operation;
.source "OpenHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/eadp/http/models/OpenHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "FlushOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ea/eadp/http/models/OpenHttpRequest$Operation",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final flushable:Ljava/io/Flushable;


# direct methods
.method protected constructor <init>(Ljava/io/Flushable;)V
    .locals 0
    .param p1, "flushable"    # Ljava/io/Flushable;

    .prologue
    .line 761
    .local p0, "this":Lcom/ea/eadp/http/models/OpenHttpRequest$FlushOperation;, "Lcom/ea/eadp/http/models/OpenHttpRequest$FlushOperation<TV;>;"
    invoke-direct {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest$Operation;-><init>()V

    .line 762
    iput-object p1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$FlushOperation;->flushable:Ljava/io/Flushable;

    .line 763
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    .local p0, "this":Lcom/ea/eadp/http/models/OpenHttpRequest$FlushOperation;, "Lcom/ea/eadp/http/models/OpenHttpRequest$FlushOperation<TV;>;"
    iget-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$FlushOperation;->flushable:Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 768
    return-void
.end method
