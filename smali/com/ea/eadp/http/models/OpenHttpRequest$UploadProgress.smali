.class public interface abstract Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;
.super Ljava/lang/Object;
.source "OpenHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/eadp/http/models/OpenHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadProgress"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 401
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress$1;

    invoke-direct {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress$1;-><init>()V

    sput-object v0, Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;->DEFAULT:Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;

    return-void
.end method


# virtual methods
.method public abstract onUpload(JJ)V
.end method
