.class Lcom/inmobi/commons/internal/InternalSDKUtil$d;
.super Ljavax/crypto/spec/SecretKeySpec;
.source "InternalSDKUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/internal/InternalSDKUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method public constructor <init>([BIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 875
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 876
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 869
    invoke-direct {p0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 871
    return-void
.end method
