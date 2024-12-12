.class public Lorg/codegist/crest/param/SimpleEncodedPair;
.super Ljava/lang/Object;
.source "SimpleEncodedPair.java"

# interfaces
.implements Lorg/codegist/crest/param/EncodedPair;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/codegist/crest/param/SimpleEncodedPair;->name:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lorg/codegist/crest/param/SimpleEncodedPair;->value:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/codegist/crest/param/SimpleEncodedPair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/codegist/crest/param/SimpleEncodedPair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lorg/codegist/common/lang/ToStringBuilder;

    invoke-direct {v0, p0}, Lorg/codegist/common/lang/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    const-string v1, "name"

    iget-object v2, p0, Lorg/codegist/crest/param/SimpleEncodedPair;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "value"

    iget-object v2, p0, Lorg/codegist/crest/param/SimpleEncodedPair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/common/lang/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
