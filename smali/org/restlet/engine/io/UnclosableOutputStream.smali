.class public Lorg/restlet/engine/io/UnclosableOutputStream;
.super Ljava/io/FilterOutputStream;
.source "UnclosableOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "source"    # Ljava/io/OutputStream;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    return-void
.end method
