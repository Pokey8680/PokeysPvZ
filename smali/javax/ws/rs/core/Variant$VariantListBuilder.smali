.class public abstract Ljavax/ws/rs/core/Variant$VariantListBuilder;
.super Ljava/lang/Object;
.source "Variant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/ws/rs/core/Variant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VariantListBuilder"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Ljavax/ws/rs/core/Variant$VariantListBuilder;
    .locals 2

    .prologue
    .line 189
    invoke-static {}, Ljavax/ws/rs/ext/RuntimeDelegate;->getInstance()Ljavax/ws/rs/ext/RuntimeDelegate;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/ws/rs/ext/RuntimeDelegate;->createVariantListBuilder()Ljavax/ws/rs/core/Variant$VariantListBuilder;

    move-result-object v0

    .line 190
    .local v0, "b":Ljavax/ws/rs/core/Variant$VariantListBuilder;
    return-object v0
.end method


# virtual methods
.method public abstract add()Ljavax/ws/rs/core/Variant$VariantListBuilder;
.end method

.method public abstract build()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/ws/rs/core/Variant;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract encodings([Ljava/lang/String;)Ljavax/ws/rs/core/Variant$VariantListBuilder;
.end method

.method public varargs abstract languages([Ljava/util/Locale;)Ljavax/ws/rs/core/Variant$VariantListBuilder;
.end method

.method public varargs abstract mediaTypes([Ljavax/ws/rs/core/MediaType;)Ljavax/ws/rs/core/Variant$VariantListBuilder;
.end method
