.class public Lme/panavtec/wizard/Wizard;
.super Ljava/lang/Object;
.source "Wizard.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/panavtec/wizard/Wizard$Builder;
    }
.end annotation


# instance fields
.field private final actionBarResolver:Lme/panavtec/wizard/ActionBarResolver;

.field private final activity:Landroid/support/v4/app/FragmentActivity;

.field private final containerId:I

.field private final enterAnimation:I

.field private final exitAnimation:I

.field private final pageListener:Lme/panavtec/wizard/WizardPageListener;

.field private final pages:[Lme/panavtec/wizard/WizardPage;

.field private final popEnterAnimation:I

.field private final popExitAnimation:I

.field private final wizardListener:Lme/panavtec/wizard/WizardListener;


# direct methods
.method protected constructor <init>(Landroid/support/v4/app/FragmentActivity;Lme/panavtec/wizard/ActionBarResolver;[Lme/panavtec/wizard/WizardPage;ILme/panavtec/wizard/WizardPageListener;Lme/panavtec/wizard/WizardListener;IIII)V
    .locals 0
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "actionBarResolver"    # Lme/panavtec/wizard/ActionBarResolver;
    .param p3, "pages"    # [Lme/panavtec/wizard/WizardPage;
    .param p4, "containerId"    # I
    .param p5, "pageListener"    # Lme/panavtec/wizard/WizardPageListener;
    .param p6, "wizardListener"    # Lme/panavtec/wizard/WizardListener;
    .param p7, "enterAnimation"    # I
    .param p8, "exitAnimation"    # I
    .param p9, "popEnterAnimation"    # I
    .param p10, "popExitAnimation"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 29
    iput-object p2, p0, Lme/panavtec/wizard/Wizard;->actionBarResolver:Lme/panavtec/wizard/ActionBarResolver;

    .line 30
    iput-object p3, p0, Lme/panavtec/wizard/Wizard;->pages:[Lme/panavtec/wizard/WizardPage;

    .line 31
    iput p4, p0, Lme/panavtec/wizard/Wizard;->containerId:I

    .line 32
    iput-object p5, p0, Lme/panavtec/wizard/Wizard;->pageListener:Lme/panavtec/wizard/WizardPageListener;

    .line 33
    iput-object p6, p0, Lme/panavtec/wizard/Wizard;->wizardListener:Lme/panavtec/wizard/WizardListener;

    .line 34
    iput p7, p0, Lme/panavtec/wizard/Wizard;->enterAnimation:I

    .line 35
    iput p8, p0, Lme/panavtec/wizard/Wizard;->exitAnimation:I

    .line 36
    iput p9, p0, Lme/panavtec/wizard/Wizard;->popEnterAnimation:I

    .line 37
    iput p10, p0, Lme/panavtec/wizard/Wizard;->popExitAnimation:I

    .line 38
    return-void
.end method

.method private getCurrentPage()Lme/panavtec/wizard/WizardPage;
    .locals 2

    .line 104
    iget-object v0, p0, Lme/panavtec/wizard/Wizard;->pages:[Lme/panavtec/wizard/WizardPage;

    iget-object v1, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public getCurrent()Landroid/support/v4/app/Fragment;
    .locals 2

    .line 108
    iget-object v0, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lme/panavtec/wizard/Wizard;->containerId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 112
    iget-object v0, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 5

    .line 41
    iget-object v0, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 43
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 44
    iget-object v1, p0, Lme/panavtec/wizard/Wizard;->pages:[Lme/panavtec/wizard/WizardPage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 45
    .local v1, "firstPage":Lme/panavtec/wizard/WizardPage;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget v3, p0, Lme/panavtec/wizard/Wizard;->containerId:I

    invoke-virtual {v1}, Lme/panavtec/wizard/WizardPage;->createFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 46
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 47
    invoke-virtual {v1}, Lme/panavtec/wizard/WizardPage;->hasOptionMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 50
    :cond_0
    iget-object v2, p0, Lme/panavtec/wizard/Wizard;->actionBarResolver:Lme/panavtec/wizard/ActionBarResolver;

    invoke-interface {v2}, Lme/panavtec/wizard/ActionBarResolver;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/panavtec/wizard/WizardPage;->setupActionBar(Landroid/support/v7/app/ActionBar;)V

    .line 52
    .end local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "firstPage":Lme/panavtec/wizard/WizardPage;
    :cond_1
    return-void
.end method

.method public navigateNext()Z
    .locals 10

    .line 83
    iget-object v0, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 85
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 86
    .local v1, "nextStep":I
    iget-object v3, p0, Lme/panavtec/wizard/Wizard;->pages:[Lme/panavtec/wizard/WizardPage;

    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 87
    aget-object v3, v3, v1

    .line 88
    .local v3, "WizardPage":Lme/panavtec/wizard/WizardPage;
    invoke-virtual {v3}, Lme/panavtec/wizard/WizardPage;->createFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 89
    .local v4, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    iget v6, p0, Lme/panavtec/wizard/Wizard;->enterAnimation:I

    iget v7, p0, Lme/panavtec/wizard/Wizard;->exitAnimation:I

    iget v8, p0, Lme/panavtec/wizard/Wizard;->popEnterAnimation:I

    iget v9, p0, Lme/panavtec/wizard/Wizard;->popExitAnimation:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    iget v6, p0, Lme/panavtec/wizard/Wizard;->containerId:I

    invoke-virtual {v5, v6, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 94
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 95
    return v2

    .line 96
    .end local v3    # "WizardPage":Lme/panavtec/wizard/WizardPage;
    .end local v4    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    iget-object v2, p0, Lme/panavtec/wizard/Wizard;->wizardListener:Lme/panavtec/wizard/WizardListener;

    if-eqz v2, :cond_1

    .line 97
    invoke-interface {v2}, Lme/panavtec/wizard/WizardListener;->onWizardFinished()V

    .line 100
    .end local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "nextStep":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public navigatePrevious()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 69
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 71
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 72
    const/4 v1, 0x1

    return v1

    .line 75
    .end local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 79
    invoke-direct {p0}, Lme/panavtec/wizard/Wizard;->getCurrentPage()Lme/panavtec/wizard/WizardPage;

    move-result-object v0

    invoke-virtual {v0}, Lme/panavtec/wizard/WizardPage;->allowsBackNavigation()Z

    move-result v0

    return v0
.end method

.method public onBackStackChanged()V
    .locals 3

    .line 116
    iget-object v0, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 117
    .local v0, "currentPageIndex":I
    iget-object v1, p0, Lme/panavtec/wizard/Wizard;->pages:[Lme/panavtec/wizard/WizardPage;

    aget-object v1, v1, v0

    .line 118
    .local v1, "currentPage":Lme/panavtec/wizard/WizardPage;
    iget-object v2, p0, Lme/panavtec/wizard/Wizard;->actionBarResolver:Lme/panavtec/wizard/ActionBarResolver;

    invoke-interface {v2}, Lme/panavtec/wizard/ActionBarResolver;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/panavtec/wizard/WizardPage;->setupActionBar(Landroid/support/v7/app/ActionBar;)V

    .line 119
    invoke-virtual {v1}, Lme/panavtec/wizard/WizardPage;->hasOptionMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 122
    :cond_0
    iget-object v2, p0, Lme/panavtec/wizard/Wizard;->pageListener:Lme/panavtec/wizard/WizardPageListener;

    if-eqz v2, :cond_1

    .line 123
    invoke-interface {v2, v0, v1}, Lme/panavtec/wizard/WizardPageListener;->onPageChanged(ILme/panavtec/wizard/WizardPage;)V

    .line 125
    :cond_1
    return-void
.end method

.method public returnToFirst()Z
    .locals 3

    .line 55
    iget-object v0, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lme/panavtec/wizard/Wizard;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 57
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 60
    return v2

    .line 63
    .end local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return v1
.end method
