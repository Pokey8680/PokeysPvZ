.class public final Lorg/restlet/engine/util/ImmutableDate;
.super Ljava/util/Date;
.source "ImmutableDate.java"


# static fields
.field private static final serialVersionUID:J = -0x5285195f6df8fad6L


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 64
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ImmutableDate is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDate(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ImmutableDate is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHours(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ImmutableDate is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinutes(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ImmutableDate is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMonth(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ImmutableDate is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSeconds(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ImmutableDate is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "arg0"    # J

    .prologue
    .line 123
    sget-object v0, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

    sget-object v1, Lorg/restlet/engine/Edition;->ANDROID:Lorg/restlet/engine/Edition;

    if-ne v0, v1, :cond_0

    .line 124
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 129
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ImmutableDate is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setYear(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ImmutableDate is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
