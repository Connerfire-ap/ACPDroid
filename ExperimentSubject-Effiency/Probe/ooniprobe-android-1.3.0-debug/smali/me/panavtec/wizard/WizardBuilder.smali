.class public Lme/panavtec/wizard/WizardBuilder;
.super Ljava/lang/Object;
.source "WizardBuilder.java"


# instance fields
.field private final actionBarResolver:Lme/panavtec/wizard/ActionBarResolver;

.field private final activity:Landroid/support/v4/app/FragmentActivity;

.field private containerId:I

.field private enterAnimation:I

.field private exitAnimation:I

.field private pageListener:Lme/panavtec/wizard/WizardPageListener;

.field private final pages:[Lme/panavtec/wizard/WizardPage;

.field private popEnterAnimation:I

.field private popExitAnimation:I

.field private wizardListener:Lme/panavtec/wizard/WizardListener;


# direct methods
.method public varargs constructor <init>(Landroid/support/v4/app/FragmentActivity;Lme/panavtec/wizard/ActionBarResolver;[Lme/panavtec/wizard/WizardPage;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "actionBarResolver"    # Lme/panavtec/wizard/ActionBarResolver;
    .param p3, "pages"    # [Lme/panavtec/wizard/WizardPage;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-eqz p1, :cond_2

    .line 23
    iput-object p1, p0, Lme/panavtec/wizard/WizardBuilder;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 25
    if-eqz p2, :cond_1

    .line 29
    iput-object p2, p0, Lme/panavtec/wizard/WizardBuilder;->actionBarResolver:Lme/panavtec/wizard/ActionBarResolver;

    .line 31
    if-eqz p3, :cond_0

    .line 34
    iput-object p3, p0, Lme/panavtec/wizard/WizardBuilder;->pages:[Lme/panavtec/wizard/WizardPage;

    .line 35
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pages must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ActionBarResolver must be provided, if you don\'t have any operations you can use the other constructor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>(Landroid/support/v4/app/FragmentActivity;[Lme/panavtec/wizard/WizardPage;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "pages"    # [Lme/panavtec/wizard/WizardPage;

    .line 38
    new-instance v0, Lme/panavtec/wizard/ReflectionActionBarResolver;

    invoke-direct {v0, p1}, Lme/panavtec/wizard/ReflectionActionBarResolver;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-direct {p0, p1, v0, p2}, Lme/panavtec/wizard/WizardBuilder;-><init>(Landroid/support/v4/app/FragmentActivity;Lme/panavtec/wizard/ActionBarResolver;[Lme/panavtec/wizard/WizardPage;)V

    .line 39
    return-void
.end method


# virtual methods
.method public build()Lme/panavtec/wizard/Wizard;
    .locals 12

    .line 77
    iget-object v3, p0, Lme/panavtec/wizard/WizardBuilder;->pages:[Lme/panavtec/wizard/WizardPage;

    array-length v0, v3

    if-eqz v0, :cond_1

    .line 82
    iget v0, p0, Lme/panavtec/wizard/WizardBuilder;->containerId:I

    if-nez v0, :cond_0

    .line 83
    const v0, 0x1020002

    iput v0, p0, Lme/panavtec/wizard/WizardBuilder;->containerId:I

    .line 86
    :cond_0
    new-instance v11, Lme/panavtec/wizard/Wizard;

    iget-object v1, p0, Lme/panavtec/wizard/WizardBuilder;->activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lme/panavtec/wizard/WizardBuilder;->actionBarResolver:Lme/panavtec/wizard/ActionBarResolver;

    iget v4, p0, Lme/panavtec/wizard/WizardBuilder;->containerId:I

    iget-object v5, p0, Lme/panavtec/wizard/WizardBuilder;->pageListener:Lme/panavtec/wizard/WizardPageListener;

    iget-object v6, p0, Lme/panavtec/wizard/WizardBuilder;->wizardListener:Lme/panavtec/wizard/WizardListener;

    iget v7, p0, Lme/panavtec/wizard/WizardBuilder;->enterAnimation:I

    iget v8, p0, Lme/panavtec/wizard/WizardBuilder;->exitAnimation:I

    iget v9, p0, Lme/panavtec/wizard/WizardBuilder;->popEnterAnimation:I

    iget v10, p0, Lme/panavtec/wizard/WizardBuilder;->popExitAnimation:I

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lme/panavtec/wizard/Wizard;-><init>(Landroid/support/v4/app/FragmentActivity;Lme/panavtec/wizard/ActionBarResolver;[Lme/panavtec/wizard/WizardPage;ILme/panavtec/wizard/WizardPageListener;Lme/panavtec/wizard/WizardListener;IIII)V

    return-object v11

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No page list configured or empty. If you don\'t have pages why you need Merlin?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containerId(I)Lme/panavtec/wizard/WizardBuilder;
    .locals 0
    .param p1, "containerId"    # I

    .line 42
    iput p1, p0, Lme/panavtec/wizard/WizardBuilder;->containerId:I

    .line 43
    return-object p0
.end method

.method public enterAnimation(I)Lme/panavtec/wizard/WizardBuilder;
    .locals 0
    .param p1, "enterAnimation"    # I

    .line 47
    iput p1, p0, Lme/panavtec/wizard/WizardBuilder;->enterAnimation:I

    .line 48
    return-object p0
.end method

.method public exitAnimation(I)Lme/panavtec/wizard/WizardBuilder;
    .locals 0
    .param p1, "exitAnimation"    # I

    .line 52
    iput p1, p0, Lme/panavtec/wizard/WizardBuilder;->exitAnimation:I

    .line 53
    return-object p0
.end method

.method public pageListener(Lme/panavtec/wizard/WizardPageListener;)Lme/panavtec/wizard/WizardBuilder;
    .locals 0
    .param p1, "pageListener"    # Lme/panavtec/wizard/WizardPageListener;

    .line 67
    iput-object p1, p0, Lme/panavtec/wizard/WizardBuilder;->pageListener:Lme/panavtec/wizard/WizardPageListener;

    .line 68
    return-object p0
.end method

.method public popEnterAnimation(I)Lme/panavtec/wizard/WizardBuilder;
    .locals 0
    .param p1, "popEnterAnimation"    # I

    .line 57
    iput p1, p0, Lme/panavtec/wizard/WizardBuilder;->popEnterAnimation:I

    .line 58
    return-object p0
.end method

.method public popExitAnimation(I)Lme/panavtec/wizard/WizardBuilder;
    .locals 0
    .param p1, "popExitAnimation"    # I

    .line 62
    iput p1, p0, Lme/panavtec/wizard/WizardBuilder;->popExitAnimation:I

    .line 63
    return-object p0
.end method

.method public wizardListener(Lme/panavtec/wizard/WizardListener;)Lme/panavtec/wizard/WizardBuilder;
    .locals 0
    .param p1, "wizardListener"    # Lme/panavtec/wizard/WizardListener;

    .line 72
    iput-object p1, p0, Lme/panavtec/wizard/WizardBuilder;->wizardListener:Lme/panavtec/wizard/WizardListener;

    .line 73
    return-object p0
.end method
