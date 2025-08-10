.class public final Ldagger/android/DispatchingAndroidInjector_Factory;
.super Ljava/lang/Object;
.source "DispatchingAndroidInjector_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ldagger/android/DispatchingAndroidInjector<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final injectorFactoriesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/AndroidInjector$Factory<",
            "+TT;>;>;>;>;"
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
            "injectorFactoriesProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/AndroidInjector$Factory<",
            "+TT;>;>;>;>;)V"
        }
    .end annotation

    .line 19
    .local p0, "this":Ldagger/android/DispatchingAndroidInjector_Factory;, "Ldagger/android/DispatchingAndroidInjector_Factory<TT;>;"
    .local p1, "injectorFactoriesProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/util/Map<Ljava/lang/Class<+TT;>;Ljavax/inject/Provider<Ldagger/android/AndroidInjector$Factory<+TT;>;>;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Ldagger/android/DispatchingAndroidInjector_Factory;->injectorFactoriesProvider:Ljavax/inject/Provider;

    .line 21
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "injectorFactoriesProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/AndroidInjector$Factory<",
            "+TT;>;>;>;>;)",
            "Ldagger/internal/Factory<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "TT;>;>;"
        }
    .end annotation

    .line 31
    .local p0, "injectorFactoriesProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/util/Map<Ljava/lang/Class<+TT;>;Ljavax/inject/Provider<Ldagger/android/AndroidInjector$Factory<+TT;>;>;>;>;"
    new-instance v0, Ldagger/android/DispatchingAndroidInjector_Factory;

    invoke-direct {v0, p0}, Ldagger/android/DispatchingAndroidInjector_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newDispatchingAndroidInjector(Ljava/util/Map;)Ldagger/android/DispatchingAndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "injectorFactories"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/AndroidInjector$Factory<",
            "+TT;>;>;>;)",
            "Ldagger/android/DispatchingAndroidInjector<",
            "TT;>;"
        }
    .end annotation

    .line 36
    .local p0, "injectorFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+TT;>;Ljavax/inject/Provider<Ldagger/android/AndroidInjector$Factory<+TT;>;>;>;"
    new-instance v0, Ldagger/android/DispatchingAndroidInjector;

    invoke-direct {v0, p0}, Ldagger/android/DispatchingAndroidInjector;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public get()Ldagger/android/DispatchingAndroidInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "TT;>;"
        }
    .end annotation

    .line 25
    .local p0, "this":Ldagger/android/DispatchingAndroidInjector_Factory;, "Ldagger/android/DispatchingAndroidInjector_Factory<TT;>;"
    new-instance v0, Ldagger/android/DispatchingAndroidInjector;

    iget-object v1, p0, Ldagger/android/DispatchingAndroidInjector_Factory;->injectorFactoriesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Ldagger/android/DispatchingAndroidInjector;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    .local p0, "this":Ldagger/android/DispatchingAndroidInjector_Factory;, "Ldagger/android/DispatchingAndroidInjector_Factory<TT;>;"
    invoke-virtual {p0}, Ldagger/android/DispatchingAndroidInjector_Factory;->get()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method
