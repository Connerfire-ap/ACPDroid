.class public Landroid/arch/lifecycle/ViewModelProviders;
.super Ljava/lang/Object;
.source "ViewModelProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;
    }
.end annotation


# static fields
.field private static sDefaultFactory:Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method private static checkActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;
    .locals 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 54
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 55
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 58
    return-object v0

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t create ViewModelProvider for detached fragment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static checkApplication(Landroid/app/Activity;)Landroid/app/Application;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 46
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 50
    return-object v0

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Your activity/fragment is not yet attached to Application. You can\'t request ViewModel before onCreate call."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static initializeFactoryIfNeeded(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .line 39
    sget-object v0, Landroid/arch/lifecycle/ViewModelProviders;->sDefaultFactory:Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;-><init>(Landroid/app/Application;)V

    sput-object v0, Landroid/arch/lifecycle/ViewModelProviders;->sDefaultFactory:Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;

    .line 42
    :cond_0
    return-void
.end method

.method public static of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;
    .locals 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 72
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->checkActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->initializeFactoryIfNeeded(Landroid/app/Application;)V

    .line 73
    new-instance v0, Landroid/arch/lifecycle/ViewModelProvider;

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelStores;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v1

    sget-object v2, Landroid/arch/lifecycle/ViewModelProviders;->sDefaultFactory:Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;

    invoke-direct {v0, v1, v2}, Landroid/arch/lifecycle/ViewModelProvider;-><init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v0
.end method

.method public static of(Landroid/support/v4/app/Fragment;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "factory"    # Landroid/arch/lifecycle/ViewModelProvider$Factory;

    .line 103
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->checkActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    .line 104
    new-instance v0, Landroid/arch/lifecycle/ViewModelProvider;

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelStores;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/arch/lifecycle/ViewModelProvider;-><init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v0
.end method

.method public static of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .line 87
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->initializeFactoryIfNeeded(Landroid/app/Application;)V

    .line 88
    new-instance v0, Landroid/arch/lifecycle/ViewModelProvider;

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelStores;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v1

    sget-object v2, Landroid/arch/lifecycle/ViewModelProviders;->sDefaultFactory:Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;

    invoke-direct {v0, v1, v2}, Landroid/arch/lifecycle/ViewModelProvider;-><init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v0
.end method

.method public static of(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;
    .locals 2
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "factory"    # Landroid/arch/lifecycle/ViewModelProvider$Factory;

    .line 120
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->checkApplication(Landroid/app/Activity;)Landroid/app/Application;

    .line 121
    new-instance v0, Landroid/arch/lifecycle/ViewModelProvider;

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelStores;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/arch/lifecycle/ViewModelProvider;-><init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v0
.end method
