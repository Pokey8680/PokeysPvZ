.class final Lorg/restlet/routing/Extractor$ExtractInfo;
.super Ljava/lang/Object;
.source "Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/restlet/routing/Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractInfo"
.end annotation


# instance fields
.field protected attribute:Ljava/lang/String;

.field protected first:Z

.field protected parameter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;
    .param p3, "first"    # Z

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/restlet/routing/Extractor$ExtractInfo;->attribute:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lorg/restlet/routing/Extractor$ExtractInfo;->parameter:Ljava/lang/String;

    .line 85
    iput-boolean p3, p0, Lorg/restlet/routing/Extractor$ExtractInfo;->first:Z

    .line 86
    return-void
.end method
