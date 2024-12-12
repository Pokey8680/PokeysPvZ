.class final Lorg/restlet/data/Method$1;
.super Ljava/lang/Object;
.source "Method.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/data/Method;->sort(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/restlet/data/Method;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 278
    check-cast p1, Lorg/restlet/data/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/restlet/data/Method;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/restlet/data/Method$1;->compare(Lorg/restlet/data/Method;Lorg/restlet/data/Method;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/restlet/data/Method;Lorg/restlet/data/Method;)I
    .locals 2
    .param p1, "m1"    # Lorg/restlet/data/Method;
    .param p2, "m2"    # Lorg/restlet/data/Method;

    .prologue
    .line 280
    invoke-virtual {p1}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
