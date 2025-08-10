.class public final Ldagger/android/support/AndroidSupportInjection;
.super Ljava/lang/Object;
.source "AndroidSupportInjection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "dagger.android.support"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findHasFragmentInjector(Landroid/support/v4/app/Fragment;)Ldagger/android/support/HasSupportFragmentInjector;
    .locals 6
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 78
    move-object v0, p0

    .line 79
    .local v0, "parentFragment":Landroid/support/v4/app/Fragment;
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_1

    .line 80
    instance-of v1, v0, Ldagger/android/support/HasSupportFragmentInjector;

    if-eqz v1, :cond_0

    .line 81
    move-object v1, v0

    check-cast v1, Ldagger/android/support/HasSupportFragmentInjector;

    return-object v1

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 85
    .local v1, "activity":Landroid/app/Activity;
    instance-of v2, v1, Ldagger/android/support/HasSupportFragmentInjector;

    if-eqz v2, :cond_2

    .line 86
    move-object v2, v1

    check-cast v2, Ldagger/android/support/HasSupportFragmentInjector;

    return-object v2

    .line 88
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    instance-of v2, v2, Ldagger/android/support/HasSupportFragmentInjector;

    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Ldagger/android/support/HasSupportFragmentInjector;

    return-object v2

    .line 91
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "No injector was found for %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inject(Landroid/support/v4/app/Fragment;)V
    .locals 5
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 56
    const-string v0, "fragment"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->findHasFragmentInjector(Landroid/support/v4/app/Fragment;)Ldagger/android/support/HasSupportFragmentInjector;

    move-result-object v0

    .line 58
    .local v0, "hasSupportFragmentInjector":Ldagger/android/support/HasSupportFragmentInjector;
    const-string v1, "dagger.android.support"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 61
    const-string v3, "An injector for %s was found in %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    nop

    .line 68
    invoke-interface {v0}, Ldagger/android/support/HasSupportFragmentInjector;->supportFragmentInjector()Ldagger/android/AndroidInjector;

    move-result-object v1

    .line 69
    .local v1, "fragmentInjector":Ldagger/android/AndroidInjector;, "Ldagger/android/AndroidInjector<Landroid/support/v4/app/Fragment;>;"
    nop

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 69
    const-string v3, "%s.supportFragmentInjector() returned null"

    invoke-static {v1, v3, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-interface {v1, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    .line 75
    return-void
.end method
