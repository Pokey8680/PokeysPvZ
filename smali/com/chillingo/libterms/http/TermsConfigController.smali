.class public interface abstract Lcom/chillingo/libterms/http/TermsConfigController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;
    }
.end annotation


# virtual methods
.method public abstract getCurrentTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;
.end method

.method public abstract initWithConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/libterms/config/SharedData;ZLjava/lang/Integer;Lcom/chillingo/libterms/Terms$TermsComplianceLevel;Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract startDownloadTermsConfig(Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;)V
.end method
