.class public Lcom/ea/blast/PhysicalKeyboardAndroidDelegate;
.super Ljava/lang/Object;
.source "PhysicalKeyboardAndroidDelegate.java"


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroidDelegate;->mConfiguration:Landroid/content/res/Configuration;

    .line 17
    return-void
.end method


# virtual methods
.method IsNavigationVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 26
    iget-object v1, p0, Lcom/ea/blast/PhysicalKeyboardAndroidDelegate;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->navigationHidden:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method IsPhysicalKeyboardVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 21
    iget-object v1, p0, Lcom/ea/blast/PhysicalKeyboardAndroidDelegate;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
