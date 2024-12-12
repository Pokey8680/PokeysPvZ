.class public Lcom/inmobi/monetization/internal/LtvpErrorCode;
.super Ljava/lang/Object;
.source "LtvpErrorCode.java"


# instance fields
.field a:I

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/inmobi/monetization/internal/LtvpErrorCode;->a:I

    .line 9
    iput-object p2, p0, Lcom/inmobi/monetization/internal/LtvpErrorCode;->b:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/inmobi/monetization/internal/LtvpErrorCode;->a:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/monetization/internal/LtvpErrorCode;->b:Ljava/lang/String;

    return-object v0
.end method
