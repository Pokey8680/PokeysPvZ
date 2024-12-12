.class public Lroboguice/context/event/OnConfigurationChangedEvent;
.super Ljava/lang/Object;
.source "OnConfigurationChangedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected newConfig:Landroid/content/res/Configuration;

.field protected oldConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 0
    .param p2, "oldConfig"    # Landroid/content/res/Configuration;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lroboguice/context/event/OnConfigurationChangedEvent;, "Lroboguice/context/event/OnConfigurationChangedEvent<TT;>;"
    .local p1, "context":Landroid/content/Context;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lroboguice/context/event/OnConfigurationChangedEvent;->oldConfig:Landroid/content/res/Configuration;

    .line 20
    iput-object p3, p0, Lroboguice/context/event/OnConfigurationChangedEvent;->newConfig:Landroid/content/res/Configuration;

    .line 21
    iput-object p1, p0, Lroboguice/context/event/OnConfigurationChangedEvent;->context:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lroboguice/context/event/OnConfigurationChangedEvent;, "Lroboguice/context/event/OnConfigurationChangedEvent<TT;>;"
    iget-object v0, p0, Lroboguice/context/event/OnConfigurationChangedEvent;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getNewConfig()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lroboguice/context/event/OnConfigurationChangedEvent;, "Lroboguice/context/event/OnConfigurationChangedEvent<TT;>;"
    iget-object v0, p0, Lroboguice/context/event/OnConfigurationChangedEvent;->newConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getOldConfig()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lroboguice/context/event/OnConfigurationChangedEvent;, "Lroboguice/context/event/OnConfigurationChangedEvent<TT;>;"
    iget-object v0, p0, Lroboguice/context/event/OnConfigurationChangedEvent;->oldConfig:Landroid/content/res/Configuration;

    return-object v0
.end method
