.class public final Ldagger/android/DispatchingAndroidInjector;
.super Ljava/lang/Object;
.source "DispatchingAndroidInjector.java"

# interfaces
.implements Ldagger/android/AndroidInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/android/DispatchingAndroidInjector$InvalidInjectorBindingException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/android/AndroidInjector<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final NO_SUPERTYPES_BOUND_FORMAT:Ljava/lang/String; = "No injector factory bound for Class<%s>"

.field private static final SUPERTYPES_BOUND_FORMAT:Ljava/lang/String; = "No injector factory bound for Class<%1$s>. Injector factories were bound for supertypes of %1$s: %2$s. Did you mean to bind an injector factory for the subtype?"


# instance fields
.field private final injectorFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/AndroidInjector$Factory<",
            "+TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
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
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/AndroidInjector$Factory<",
            "+TT;>;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 55
    .local p0, "this":Ldagger/android/DispatchingAndroidInjector;, "Ldagger/android/DispatchingAndroidInjector<TT;>;"
    .local p1, "injectorFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+TT;>;Ljavax/inject/Provider<Ldagger/android/AndroidInjector$Factory<+TT;>;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Ldagger/android/DispatchingAndroidInjector;->injectorFactories:Ljava/util/Map;

    .line 57
    return-void
.end method

.method private errorMessageSuggestions(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 122
    .local p0, "this":Ldagger/android/DispatchingAndroidInjector;, "Ldagger/android/DispatchingAndroidInjector<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Ldagger/android/DispatchingAndroidInjector;->injectorFactories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 124
    .local v2, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v2    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    :cond_0
    goto :goto_0

    .line 128
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 131
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "No injector factory bound for Class<%s>"

    goto :goto_1

    :cond_2
    const-string v1, "No injector factory bound for Class<%1$s>. Injector factories were bound for supertypes of %1$s: %2$s. Did you mean to bind an injector factory for the subtype?"

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 130
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public inject(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Ldagger/android/DispatchingAndroidInjector;, "Ldagger/android/DispatchingAndroidInjector<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ldagger/android/DispatchingAndroidInjector;->maybeInject(Ljava/lang/Object;)Z

    move-result v0

    .line 103
    .local v0, "wasInjected":Z
    if-eqz v0, :cond_0

    .line 106
    return-void

    .line 104
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ldagger/android/DispatchingAndroidInjector;->errorMessageSuggestions(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public maybeInject(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 68
    .local p0, "this":Ldagger/android/DispatchingAndroidInjector;, "Ldagger/android/DispatchingAndroidInjector<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ldagger/android/DispatchingAndroidInjector;->injectorFactories:Ljava/util/Map;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    .line 70
    .local v0, "factoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ldagger/android/AndroidInjector$Factory<+TT;>;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    return v1

    .line 75
    :cond_0
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldagger/android/AndroidInjector$Factory;

    .line 77
    .local v2, "factory":Ldagger/android/AndroidInjector$Factory;, "Ldagger/android/AndroidInjector$Factory<TT;>;"
    nop

    .line 79
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v2, p1}, Ldagger/android/AndroidInjector$Factory;->create(Ljava/lang/Object;)Ldagger/android/AndroidInjector;

    move-result-object v4

    const-string v5, "%s.create(I) should not return null."

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 78
    invoke-static {v4, v5, v6}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldagger/android/AndroidInjector;

    .line 81
    .local v4, "injector":Ldagger/android/AndroidInjector;, "Ldagger/android/AndroidInjector<TT;>;"
    invoke-interface {v4, p1}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return v3

    .line 83
    .end local v4    # "injector":Ldagger/android/AndroidInjector;, "Ldagger/android/AndroidInjector<TT;>;"
    :catch_0
    move-exception v4

    .line 84
    .local v4, "e":Ljava/lang/ClassCastException;
    new-instance v5, Ldagger/android/DispatchingAndroidInjector$InvalidInjectorBindingException;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 87
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    .line 85
    const-string v1, "%s does not implement AndroidInjector.Factory<%s>"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v4}, Ldagger/android/DispatchingAndroidInjector$InvalidInjectorBindingException;-><init>(Ljava/lang/String;Ljava/lang/ClassCastException;)V

    throw v5
.end method
