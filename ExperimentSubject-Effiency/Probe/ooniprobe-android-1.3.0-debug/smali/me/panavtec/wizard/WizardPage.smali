.class public abstract Lme/panavtec/wizard/WizardPage;
.super Ljava/lang/Object;
.source "WizardPage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v4/app/Fragment;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    .local p0, "this":Lme/panavtec/wizard/WizardPage;, "Lme/panavtec/wizard/WizardPage<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowsBackNavigation()Z
    .locals 1

    .line 18
    .local p0, "this":Lme/panavtec/wizard/WizardPage;, "Lme/panavtec/wizard/WizardPage<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public abstract createFragment()Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public hasOptionMenu()Z
    .locals 1

    .line 14
    .local p0, "this":Lme/panavtec/wizard/WizardPage;, "Lme/panavtec/wizard/WizardPage<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setupActionBar(Landroid/support/v7/app/ActionBar;)V
    .locals 0
    .param p1, "supportActionBar"    # Landroid/support/v7/app/ActionBar;

    .line 11
    .local p0, "this":Lme/panavtec/wizard/WizardPage;, "Lme/panavtec/wizard/WizardPage<TT;>;"
    return-void
.end method
