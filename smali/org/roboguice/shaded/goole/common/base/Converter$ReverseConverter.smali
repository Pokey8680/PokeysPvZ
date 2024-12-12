.class final Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;
.super Lorg/roboguice/shaded/goole/common/base/Converter;
.source "Converter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReverseConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/base/Converter",
        "<TB;TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final original:Lorg/roboguice/shaded/goole/common/base/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Converter",
            "<TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Converter",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "original":Lorg/roboguice/shaded/goole/common/base/Converter;, "Lorg/roboguice/shaded/goole/common/base/Converter<TA;TB;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Converter;-><init>()V

    .line 221
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;->original:Lorg/roboguice/shaded/goole/common/base/Converter;

    .line 222
    return-void
.end method


# virtual methods
.method correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;->original:Lorg/roboguice/shaded/goole/common/base/Converter;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Converter;->correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;->original:Lorg/roboguice/shaded/goole/common/base/Converter;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Converter;->correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 260
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter<TA;TB;>;"
    instance-of v1, p1, Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 261
    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;

    .line 262
    .local v0, "that":Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter<**>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;->original:Lorg/roboguice/shaded/goole/common/base/Converter;

    iget-object v2, v0, Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;->original:Lorg/roboguice/shaded/goole/common/base/Converter;

    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/base/Converter;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 264
    .end local v0    # "that":Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter<**>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 269
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter<TA;TB;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;->original:Lorg/roboguice/shaded/goole/common/base/Converter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public reverse()Lorg/roboguice/shaded/goole/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Converter",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter<TA;TB;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;->original:Lorg/roboguice/shaded/goole/common/base/Converter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;, "Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter<TA;TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;->original:Lorg/roboguice/shaded/goole/common/base/Converter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
