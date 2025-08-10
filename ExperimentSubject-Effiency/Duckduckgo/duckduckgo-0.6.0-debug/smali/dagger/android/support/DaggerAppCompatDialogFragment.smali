.class public abstract Ldagger/android/support/DaggerAppCompatDialogFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "DaggerAppCompatDialogFragment.java"

# interfaces
.implements Ldagger/android/support/HasSupportFragmentInjector;


# instance fields
.field childFragmentInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroid/support/v4/app/Fragment;)V

    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public supportFragmentInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Ldagger/android/support/DaggerAppCompatDialogFragment;->childFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method
