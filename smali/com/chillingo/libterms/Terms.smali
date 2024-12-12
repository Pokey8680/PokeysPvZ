.class public interface abstract Lcom/chillingo/libterms/Terms;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    }
.end annotation


# virtual methods
.method public abstract intentForEndUserLicenseAgreement()Landroid/content/Intent;
.end method

.method public abstract intentForPrivacyPolicy()Landroid/content/Intent;
.end method

.method public abstract intentForTermsDialogActivity()Landroid/content/Intent;
.end method

.method public abstract intentForTermsOfService()Landroid/content/Intent;
.end method
