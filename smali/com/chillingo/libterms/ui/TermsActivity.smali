.class public final Lcom/chillingo/libterms/ui/TermsActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/libterms/ui/TermsActivity$8;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/chillingo/libterms/config/SharedData;

.field private c:Ljava/util/Date;

.field private d:Z

.field private e:Lcom/chillingo/libterms/TermsUIConfig;

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const-string v0, "TermsActivity"

    iput-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->a:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->d:Z

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->f:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->g:I

    .line 45
    const/4 v0, 0x3

    iput v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->h:I

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .locals 5

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chillingo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 196
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 200
    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 223
    const-string v0, "acceptButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 224
    new-instance v1, Lcom/chillingo/libterms/ui/TermsActivity$1;

    invoke-direct {v1, p0}, Lcom/chillingo/libterms/ui/TermsActivity$1;-><init>(Lcom/chillingo/libterms/ui/TermsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const-string v0, "declineButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 233
    new-instance v1, Lcom/chillingo/libterms/ui/TermsActivity$2;

    invoke-direct {v1, p0}, Lcom/chillingo/libterms/ui/TermsActivity$2;-><init>(Lcom/chillingo/libterms/ui/TermsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const-string v0, "termsButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 242
    new-instance v1, Lcom/chillingo/libterms/ui/TermsActivity$3;

    invoke-direct {v1, p0}, Lcom/chillingo/libterms/ui/TermsActivity$3;-><init>(Lcom/chillingo/libterms/ui/TermsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const-string v0, "privacyButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 251
    new-instance v1, Lcom/chillingo/libterms/ui/TermsActivity$4;

    invoke-direct {v1, p0}, Lcom/chillingo/libterms/ui/TermsActivity$4;-><init>(Lcom/chillingo/libterms/ui/TermsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const-string v0, "eulaButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 260
    new-instance v1, Lcom/chillingo/libterms/ui/TermsActivity$5;

    invoke-direct {v1, p0}, Lcom/chillingo/libterms/ui/TermsActivity$5;-><init>(Lcom/chillingo/libterms/ui/TermsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    const-string v0, "ageEditText"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 269
    new-instance v1, Lcom/chillingo/libterms/ui/TermsActivity$6;

    invoke-direct {v1, p0}, Lcom/chillingo/libterms/ui/TermsActivity$6;-><init>(Lcom/chillingo/libterms/ui/TermsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 281
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 77
    if-eqz p1, :cond_1

    .line 78
    const-string v0, "lockdownDialogWasDisplayed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->d:Z

    .line 80
    const-string v0, "lockdownExpiryTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/util/Date;

    const-string v1, "lockdownExpiryTime"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    .line 83
    :cond_0
    const-string v0, "termsUIConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "termsUIConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/libterms/TermsUIConfig;->uiConfigFromList(Ljava/util/List;)Lcom/chillingo/libterms/TermsUIConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    .line 89
    :cond_1
    return-void
.end method

.method private a(Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 475
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 476
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 477
    return-void
.end method

.method private a(Lcom/chillingo/libterms/TermsUIConfig;)V
    .locals 12

    .prologue
    .line 353
    const-string v0, "termsButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 354
    const-string v1, "eulaButton"

    invoke-direct {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 355
    const-string v2, "privacyButton"

    invoke-direct {p0, v2}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 356
    const-string v3, "acceptButton"

    invoke-direct {p0, v3}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 357
    const-string v4, "declineButton"

    invoke-direct {p0, v4}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 359
    const-string v5, "introTextView"

    invoke-direct {p0, v5}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 360
    const-string v6, "introTitleView"

    invoke-direct {p0, v6}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 361
    const-string v7, "ageLabelTextView"

    invoke-direct {p0, v7}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 362
    const-string v8, "iAcceptLabel"

    invoke-direct {p0, v8}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 364
    const-string v9, "mainLayout"

    invoke-direct {p0, v9}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 366
    const-string v10, "ageEditText"

    invoke-direct {p0, v10}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 369
    iget v11, p1, Lcom/chillingo/libterms/TermsUIConfig;->linkButtonBackgroundImage:I

    if-eqz v11, :cond_0

    .line 370
    iget v11, p1, Lcom/chillingo/libterms/TermsUIConfig;->linkButtonBackgroundImage:I

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 371
    iget v11, p1, Lcom/chillingo/libterms/TermsUIConfig;->linkButtonBackgroundImage:I

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 372
    iget v11, p1, Lcom/chillingo/libterms/TermsUIConfig;->linkButtonBackgroundImage:I

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 376
    :cond_0
    iget v11, p1, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonBackgroundImage:I

    if-eqz v11, :cond_1

    .line 377
    iget v11, p1, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonBackgroundImage:I

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 380
    :cond_1
    iget v11, p1, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonBackgroundImage:I

    if-eqz v11, :cond_2

    .line 381
    iget v11, p1, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonBackgroundImage:I

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 384
    :cond_2
    iget v11, p1, Lcom/chillingo/libterms/TermsUIConfig;->ageEditTextBackgroundImage:I

    if-eqz v11, :cond_3

    .line 385
    iget v11, p1, Lcom/chillingo/libterms/TermsUIConfig;->ageEditTextBackgroundImage:I

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 388
    :cond_3
    iget v11, p1, Lcom/chillingo/libterms/TermsUIConfig;->ageEditTextColor:I

    if-eqz v11, :cond_4

    .line 389
    iget v11, p1, Lcom/chillingo/libterms/TermsUIConfig;->ageEditTextColor:I

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setTextColor(I)V

    .line 392
    :cond_4
    iget v10, p1, Lcom/chillingo/libterms/TermsUIConfig;->labelColor:I

    if-eqz v10, :cond_5

    .line 393
    iget v10, p1, Lcom/chillingo/libterms/TermsUIConfig;->labelColor:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    iget v7, p1, Lcom/chillingo/libterms/TermsUIConfig;->labelColor:I

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    :cond_5
    iget v7, p1, Lcom/chillingo/libterms/TermsUIConfig;->linkButtonTextColor:I

    if-eqz v7, :cond_6

    .line 399
    iget v7, p1, Lcom/chillingo/libterms/TermsUIConfig;->linkButtonTextColor:I

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 400
    iget v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->linkButtonTextColor:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 401
    iget v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->linkButtonTextColor:I

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 404
    :cond_6
    iget v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonTextColor:I

    if-eqz v0, :cond_7

    .line 405
    iget v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonTextColor:I

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 408
    :cond_7
    iget v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonTextColor:I

    if-eqz v0, :cond_8

    .line 409
    iget v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonTextColor:I

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 413
    :cond_8
    iget v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->introTitleColor:I

    if-eqz v0, :cond_9

    .line 414
    iget v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->introTitleColor:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 418
    :cond_9
    iget v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->introTextColor:I

    if-eqz v0, :cond_a

    .line 419
    iget v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->introTextColor:I

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    :cond_a
    iget v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->activityBackgroundImage:I

    if-eqz v0, :cond_b

    .line 424
    iget v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->activityBackgroundImage:I

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 425
    :cond_b
    return-void
.end method

.method private a(Lcom/chillingo/libterms/config/SharedData;)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 297
    if-nez p1, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No shared data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getTermAcceptanceRequired()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No terms flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_1
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getAgeGateRequired()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No age flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_2
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getTermAcceptanceRequired()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getAgeGateRequired()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t show a dialog with neither the terms nor the age gate required. The dialog should only be activated in response to the ageVerificationPendingDialogDisplay() callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_3
    const-string v0, "termsButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 309
    const-string v1, "eulaButton"

    invoke-direct {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 310
    const-string v2, "privacyButton"

    invoke-direct {p0, v2}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 311
    const-string v3, "iAcceptLabel"

    invoke-direct {p0, v3}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 314
    const-string v4, "ageLabelTextView"

    invoke-direct {p0, v4}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 315
    const-string v5, "ageEditText"

    invoke-direct {p0, v5}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 317
    const-string v6, "acceptButton"

    invoke-direct {p0, v6}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 318
    const-string v7, "declineButton"

    invoke-direct {p0, v7}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 321
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getTermAcceptanceRequired()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 323
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 325
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 326
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    const-string v0, "acceptButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 330
    const-string v0, "declineButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :goto_0
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getAgeGateRequired()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 344
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 350
    :goto_1
    return-void

    .line 333
    :cond_4
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 334
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 335
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 336
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    const-string v0, "acceptButtonNoTerms"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const-string v0, "declineButtonNoTerms"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 347
    :cond_5
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/chillingo/libterms/ui/TermsActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->f()V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chillingo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 214
    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_0
    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 284
    const-string v0, "acceptButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 285
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 287
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getAgeGateRequired()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 289
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 292
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/chillingo/libterms/ui/TermsActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->g()V

    return-void
.end method

.method private c()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 432
    const-string v0, "ageEditText"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 434
    const/4 v1, 0x0

    .line 437
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 442
    :goto_0
    return-object v0

    .line 438
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/chillingo/libterms/ui/TermsActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->h()V

    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeFailureWaitTime()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeFailureWaitTime()Ljava/lang/Integer;

    move-result-object v0

    .line 456
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    .line 457
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    iget-object v2, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 458
    return-void

    .line 453
    :cond_0
    const/16 v0, 0x258

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/chillingo/libterms/ui/TermsActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->i()V

    return-void
.end method

.method static synthetic e(Lcom/chillingo/libterms/ui/TermsActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->j()V

    return-void
.end method

.method private e()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 461
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 463
    iget-object v2, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    if-nez v2, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    iget-object v2, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 466
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 484
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->c()Ljava/lang/Integer;

    move-result-object v0

    .line 487
    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 491
    :cond_0
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->setAgeOnAcceptance(Ljava/lang/Integer;)V

    .line 494
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v0

    sget-object v1, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;->DIALOG_ACCEPT_WAS_PRESSED:Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->notifyEvent(Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;)V

    .line 497
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->finish()V

    .line 516
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getCanPassUnderAge()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->setAgeOnAcceptance(Ljava/lang/Integer;)V

    .line 502
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v0

    sget-object v1, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;->DIALOG_ACCEPT_WAS_PRESSED:Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->notifyEvent(Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;)V

    .line 506
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->finish()V

    goto :goto_0

    .line 508
    :cond_2
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->d()V

    .line 509
    iput-boolean v2, p0, Lcom/chillingo/libterms/ui/TermsActivity;->d:Z

    .line 511
    const-string v0, "ageEditText"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 512
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Landroid/os/IBinder;)V

    .line 513
    invoke-virtual {p0, v2}, Lcom/chillingo/libterms/ui/TermsActivity;->showDialog(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/chillingo/libterms/ui/TermsActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->b()V

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getTermAcceptanceRequired()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->showDialog(I)V

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    .line 530
    new-instance v1, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/libterms/config/SharedData;->getResourcePackageNameOrDefault()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;-><init>(Lcom/chillingo/libterms/model/TermsConfig;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->intentForTermsOfService()Landroid/content/Intent;

    move-result-object v0

    .line 531
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 532
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    .line 537
    new-instance v1, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/libterms/config/SharedData;->getResourcePackageNameOrDefault()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;-><init>(Lcom/chillingo/libterms/model/TermsConfig;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->intentForPrivacyPolicy()Landroid/content/Intent;

    move-result-object v0

    .line 538
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 539
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    .line 544
    new-instance v1, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/libterms/config/SharedData;->getResourcePackageNameOrDefault()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;-><init>(Lcom/chillingo/libterms/model/TermsConfig;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->intentForEndUserLicenseAgreement()Landroid/content/Intent;

    move-result-object v0

    .line 545
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 546
    return-void
.end method

.method private k()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 641
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getAgeGateRequired()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    :goto_0
    return v1

    .line 648
    :cond_0
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 650
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 655
    :goto_1
    if-eq v0, v3, :cond_1

    .line 661
    :goto_2
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->c()Ljava/lang/Integer;

    move-result-object v3

    .line 662
    if-eqz v3, :cond_3

    .line 663
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v0, :cond_2

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_0

    .line 658
    :cond_1
    const/16 v0, 0xd

    goto :goto_2

    :cond_2
    move v0, v2

    .line 663
    goto :goto_3

    :cond_3
    move v1, v2

    .line 665
    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private l()Lcom/chillingo/libterms/config/SharedData;
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->b:Lcom/chillingo/libterms/config/SharedData;

    if-nez v0, :cond_0

    .line 674
    new-instance v0, Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chillingo/libterms/config/SharedData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->b:Lcom/chillingo/libterms/config/SharedData;

    .line 675
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->b:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->loadStoredConfig()V

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->b:Lcom/chillingo/libterms/config/SharedData;

    return-object v0
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getResourcePackageNameOrDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 553
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->startActivity(Landroid/content/Intent;)V

    .line 557
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 100
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "terms"

    const-string v3, "layout"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 104
    if-nez v1, :cond_0

    .line 105
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to obtain terms layout resource (package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    invoke-virtual {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->setContentView(I)V

    .line 110
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uiConfig"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_1

    .line 112
    invoke-static {v1}, Lcom/chillingo/libterms/TermsUIConfig;->uiConfigFromList(Ljava/util/List;)Lcom/chillingo/libterms/TermsUIConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->a()V

    .line 116
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->b()V

    .line 119
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    if-nez v1, :cond_2

    .line 120
    invoke-static {p0, v0}, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->defaultUIConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/chillingo/libterms/TermsUIConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Lcom/chillingo/libterms/TermsUIConfig;)V

    .line 126
    :cond_3
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Lcom/chillingo/libterms/config/SharedData;)V

    .line 129
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/libterms/ui/TermsObservable;->addObserver(Ljava/util/Observer;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 566
    packed-switch p1, :pswitch_data_0

    .line 611
    :goto_0
    return-object v0

    .line 568
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "criteriaNotMetDescription"

    invoke-direct {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/chillingo/libterms/ui/TermsActivity$7;

    invoke-direct {v1, p0}, Lcom/chillingo/libterms/ui/TermsActivity$7;-><init>(Lcom/chillingo/libterms/ui/TermsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 597
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "declineErrorDescription"

    invoke-direct {p0, v2}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "declineErrorButton"

    invoke-direct {p0, v2}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 604
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "declineErrorDescriptionNoTerms"

    invoke-direct {p0, v2}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "declineErrorButton"

    invoke-direct {p0, v2}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 138
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 160
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 170
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->d:Z

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->dismissDialog(I)V

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->b()V

    .line 175
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "lockdownExpiryTime"

    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 58
    :cond_0
    const-string v0, "lockdownDialogWasDisplayed"

    iget-boolean v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "termsUIConfig"

    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    invoke-virtual {v1}, Lcom/chillingo/libterms/TermsUIConfig;->uiConfigAsArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 63
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 153
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 146
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/libterms/ui/TermsObservable;->deleteObserver(Ljava/util/Observer;)V

    .line 147
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 620
    check-cast p1, Lcom/chillingo/libterms/ui/TermsObservable;

    .line 622
    .end local p1    # "observable":Ljava/util/Observable;
    sget-object v0, Lcom/chillingo/libterms/ui/TermsActivity$8;->a:[I

    check-cast p2, Lcom/chillingo/libterms/ui/TermsObservable$Events;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/chillingo/libterms/ui/TermsObservable$Events;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 625
    :pswitch_0
    invoke-virtual {p1}, Lcom/chillingo/libterms/ui/TermsObservable;->downloadWasSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->loadStoredConfig()V

    .line 629
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->l()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Lcom/chillingo/libterms/config/SharedData;)V

    goto :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
