.class public Lorg/restlet/engine/util/CookieSeries;
.super Lorg/restlet/util/Series;
.source "CookieSeries.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/util/Series",
        "<",
        "Lorg/restlet/data/Cookie;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/restlet/data/Cookie;

    invoke-direct {p0, v0}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "delegate":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Cookie;>;"
    const-class v0, Lorg/restlet/data/Cookie;

    invoke-direct {p0, v0, p1}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    .line 66
    return-void
.end method
