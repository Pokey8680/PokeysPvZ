.class public Lorg/restlet/engine/util/CookieSettingSeries;
.super Lorg/restlet/util/Series;
.source "CookieSettingSeries.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/util/Series",
        "<",
        "Lorg/restlet/data/CookieSetting;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/restlet/data/CookieSetting;

    invoke-direct {p0, v0}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/CookieSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "delegate":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CookieSetting;>;"
    const-class v0, Lorg/restlet/data/CookieSetting;

    invoke-direct {p0, v0, p1}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    .line 64
    return-void
.end method
