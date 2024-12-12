.class public Lorg/restlet/data/Product;
.super Ljava/lang/Object;
.source "Product.java"


# instance fields
.field private volatile comment:Ljava/lang/String;

.field private volatile name:Ljava/lang/String;

.field private volatile version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "comment"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/restlet/data/Product;->name:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lorg/restlet/data/Product;->version:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lorg/restlet/data/Product;->comment:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/restlet/data/Product;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/restlet/data/Product;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/restlet/data/Product;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/restlet/data/Product;->comment:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lorg/restlet/data/Product;->name:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lorg/restlet/data/Product;->version:Ljava/lang/String;

    .line 127
    return-void
.end method
