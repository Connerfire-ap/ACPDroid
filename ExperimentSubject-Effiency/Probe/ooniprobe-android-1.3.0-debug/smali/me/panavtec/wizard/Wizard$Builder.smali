.class public Lme/panavtec/wizard/Wizard$Builder;
.super Lme/panavtec/wizard/WizardBuilder;
.source "Wizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/panavtec/wizard/Wizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public varargs constructor <init>(Landroid/support/v7/app/AppCompatActivity;[Lme/panavtec/wizard/WizardPage;)V
    .locals 0
    .param p1, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p2, "pages"    # [Lme/panavtec/wizard/WizardPage;

    .line 129
    invoke-direct {p0, p1, p2}, Lme/panavtec/wizard/WizardBuilder;-><init>(Landroid/support/v4/app/FragmentActivity;[Lme/panavtec/wizard/WizardPage;)V

    .line 130
    return-void
.end method
