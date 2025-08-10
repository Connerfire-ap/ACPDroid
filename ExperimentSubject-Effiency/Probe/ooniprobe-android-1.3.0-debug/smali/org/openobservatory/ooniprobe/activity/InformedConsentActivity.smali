.class public Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "InformedConsentActivity.java"

# interfaces
.implements Lme/panavtec/wizard/WizardPageListener;
.implements Lme/panavtec/wizard/WizardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep5;,
        Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep4;,
        Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep3;,
        Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep2;,
        Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep1;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE:I = 0x3e8

.field public static final RESULT_CODE_COMPLETED:I = 0x1


# instance fields
.field private wizard:Lme/panavtec/wizard/Wizard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBase"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public getWizard()Lme/panavtec/wizard/Wizard;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;->wizard:Lme/panavtec/wizard/Wizard;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;->wizard:Lme/panavtec/wizard/Wizard;

    invoke-virtual {v0}, Lme/panavtec/wizard/Wizard;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 86
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 36
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 38
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;->setContentView(I)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;->switchToWizard(I)V

    .line 40
    return-void
.end method

.method public onPageChanged(ILme/panavtec/wizard/WizardPage;)V
    .locals 0
    .param p1, "currentPageIndex"    # I
    .param p2, "page"    # Lme/panavtec/wizard/WizardPage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentPageIndex",
            "page"
        }
    .end annotation

    .line 97
    return-void
.end method

.method public onWizardFinished()V
    .locals 1

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;->setResult(I)V

    .line 91
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;->finish()V

    .line 92
    return-void
.end method

.method public showToast(IZ)V
    .locals 5
    .param p1, "string"    # I
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "string",
            "success"
        }
    .end annotation

    .line 72
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 73
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, "view":Landroid/view/View;
    if-eqz p2, :cond_0

    const v2, 0x7f0700a1

    goto :goto_0

    :cond_0
    const v2, 0x7f07006a

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 76
    .local v2, "text":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    return-void
.end method

.method public switchToWizard(I)V
    .locals 3
    .param p1, "step"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "step"
        }
    .end annotation

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Lme/panavtec/wizard/WizardPage;

    new-instance v1, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep1;

    invoke-direct {v1, p0}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep1;-><init>(Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep2;

    invoke-direct {v1, p0}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep2;-><init>(Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep3;

    invoke-direct {v1, p0}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep3;-><init>(Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep4;

    invoke-direct {v1, p0}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep4;-><init>(Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep5;

    invoke-direct {v1, p0}, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity$WizardStep5;-><init>(Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 54
    .local v0, "wizardPages":[Lme/panavtec/wizard/WizardPage;
    new-instance v1, Lme/panavtec/wizard/Wizard$Builder;

    invoke-direct {v1, p0, v0}, Lme/panavtec/wizard/Wizard$Builder;-><init>(Landroid/support/v7/app/AppCompatActivity;[Lme/panavtec/wizard/WizardPage;)V

    .line 55
    const v2, 0x7f08003c

    invoke-virtual {v1, v2}, Lme/panavtec/wizard/Wizard$Builder;->containerId(I)Lme/panavtec/wizard/WizardBuilder;

    move-result-object v1

    .line 56
    const v2, 0x7f01000c

    invoke-virtual {v1, v2}, Lme/panavtec/wizard/WizardBuilder;->enterAnimation(I)Lme/panavtec/wizard/WizardBuilder;

    move-result-object v1

    .line 57
    const v2, 0x7f01000b

    invoke-virtual {v1, v2}, Lme/panavtec/wizard/WizardBuilder;->exitAnimation(I)Lme/panavtec/wizard/WizardBuilder;

    move-result-object v1

    .line 58
    const v2, 0x7f01000a

    invoke-virtual {v1, v2}, Lme/panavtec/wizard/WizardBuilder;->popEnterAnimation(I)Lme/panavtec/wizard/WizardBuilder;

    move-result-object v1

    .line 59
    const v2, 0x7f01000d

    invoke-virtual {v1, v2}, Lme/panavtec/wizard/WizardBuilder;->popExitAnimation(I)Lme/panavtec/wizard/WizardBuilder;

    move-result-object v1

    .line 60
    invoke-virtual {v1, p0}, Lme/panavtec/wizard/WizardBuilder;->pageListener(Lme/panavtec/wizard/WizardPageListener;)Lme/panavtec/wizard/WizardBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {v1, p0}, Lme/panavtec/wizard/WizardBuilder;->wizardListener(Lme/panavtec/wizard/WizardListener;)Lme/panavtec/wizard/WizardBuilder;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lme/panavtec/wizard/WizardBuilder;->build()Lme/panavtec/wizard/Wizard;

    move-result-object v1

    iput-object v1, p0, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;->wizard:Lme/panavtec/wizard/Wizard;

    .line 63
    invoke-virtual {v1}, Lme/panavtec/wizard/Wizard;->init()V

    .line 65
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 66
    iget-object v2, p0, Lorg/openobservatory/ooniprobe/activity/InformedConsentActivity;->wizard:Lme/panavtec/wizard/Wizard;

    invoke-virtual {v2}, Lme/panavtec/wizard/Wizard;->navigateNext()Z

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
