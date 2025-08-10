.class public final Ldagger/android/DaggerDialogFragment_MembersInjector;
.super Ljava/lang/Object;
.source "DaggerDialogFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Ldagger/android/DaggerDialogFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final childFragmentInjectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childFragmentInjectorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;>;)V"
        }
    .end annotation

    .line 17
    .local p1, "childFragmentInjectorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ldagger/android/DispatchingAndroidInjector<Landroid/app/Fragment;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ldagger/android/DaggerDialogFragment_MembersInjector;->childFragmentInjectorProvider:Ljavax/inject/Provider;

    .line 19
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childFragmentInjectorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;>;)",
            "Ldagger/MembersInjector<",
            "Ldagger/android/DaggerDialogFragment;",
            ">;"
        }
    .end annotation

    .line 23
    .local p0, "childFragmentInjectorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ldagger/android/DispatchingAndroidInjector<Landroid/app/Fragment;>;>;"
    new-instance v0, Ldagger/android/DaggerDialogFragment_MembersInjector;

    invoke-direct {v0, p0}, Ldagger/android/DaggerDialogFragment_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectChildFragmentInjector(Ldagger/android/DaggerDialogFragment;Ldagger/android/DispatchingAndroidInjector;)V
    .locals 0
    .param p0, "instance"    # Ldagger/android/DaggerDialogFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "childFragmentInjector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/android/DaggerDialogFragment;",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "childFragmentInjector":Ldagger/android/DispatchingAndroidInjector;, "Ldagger/android/DispatchingAndroidInjector<Landroid/app/Fragment;>;"
    iput-object p1, p0, Ldagger/android/DaggerDialogFragment;->childFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    .line 34
    return-void
.end method


# virtual methods
.method public injectMembers(Ldagger/android/DaggerDialogFragment;)V
    .locals 1
    .param p1, "instance"    # Ldagger/android/DaggerDialogFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Ldagger/android/DaggerDialogFragment_MembersInjector;->childFragmentInjectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/android/DispatchingAndroidInjector;

    invoke-static {p1, v0}, Ldagger/android/DaggerDialogFragment_MembersInjector;->injectChildFragmentInjector(Ldagger/android/DaggerDialogFragment;Ldagger/android/DispatchingAndroidInjector;)V

    .line 29
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "instance"
        }
    .end annotation

    .line 8
    check-cast p1, Ldagger/android/DaggerDialogFragment;

    invoke-virtual {p0, p1}, Ldagger/android/DaggerDialogFragment_MembersInjector;->injectMembers(Ldagger/android/DaggerDialogFragment;)V

    return-void
.end method
