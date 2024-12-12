.class public Lorg/restlet/engine/header/DateWriter;
.super Ljava/lang/Object;
.source "DateWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static write(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/restlet/engine/header/DateWriter;->write(Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static write(Ljava/util/Date;Z)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "cookie"    # Z

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    sget-object v0, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1036:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/restlet/engine/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/restlet/engine/util/DateUtils;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
