.class final Lorg/restlet/routing/Validator$ValidateInfo;
.super Ljava/lang/Object;
.source "Validator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/restlet/routing/Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValidateInfo"
.end annotation


# instance fields
.field protected attribute:Ljava/lang/String;

.field protected format:Ljava/lang/String;

.field protected required:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "format"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/restlet/routing/Validator$ValidateInfo;->attribute:Ljava/lang/String;

    .line 82
    iput-boolean p2, p0, Lorg/restlet/routing/Validator$ValidateInfo;->required:Z

    .line 83
    iput-object p3, p0, Lorg/restlet/routing/Validator$ValidateInfo;->format:Ljava/lang/String;

    .line 84
    return-void
.end method
