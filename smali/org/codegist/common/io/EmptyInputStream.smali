.class public Lorg/codegist/common/io/EmptyInputStream;
.super Ljava/io/InputStream;
.source "EmptyInputStream.java"


# static fields
.field public static final INSTANCE:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lorg/codegist/common/io/EmptyInputStream;

    invoke-direct {v0}, Lorg/codegist/common/io/EmptyInputStream;-><init>()V

    sput-object v0, Lorg/codegist/common/io/EmptyInputStream;->INSTANCE:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, -0x1

    return v0
.end method
