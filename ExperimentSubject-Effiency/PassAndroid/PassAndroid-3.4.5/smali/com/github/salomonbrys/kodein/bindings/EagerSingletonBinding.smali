.class public final Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding;
.super Lcom/github/salomonbrys/kodein/bindings/ASingleton;
.source "bindings.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/salomonbrys/kodein/bindings/ASingleton",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B4\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00028\u00000\t\u00a2\u0006\u0002\u0008\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding;",
        "T",
        "",
        "Lcom/github/salomonbrys/kodein/bindings/ASingleton;",
        "builder",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
        "createdType",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "creator",
        "Lkotlin/Function1;",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lcom/github/salomonbrys/kodein/Kodein$Builder;Lcom/github/salomonbrys/kodein/TypeToken;Lkotlin/jvm/functions/Function1;)V",
        "getCreatedType",
        "()Lcom/github/salomonbrys/kodein/TypeToken;",
        "factoryName",
        "",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field private final createdType:Lcom/github/salomonbrys/kodein/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/Kodein$Builder;Lcom/github/salomonbrys/kodein/TypeToken;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "builder"    # Lcom/github/salomonbrys/kodein/Kodein$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "createdType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "creator"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "+TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v1, "builder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "createdType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "creator"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p3}, Lcom/github/salomonbrys/kodein/bindings/ASingleton;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding;->createdType:Lcom/github/salomonbrys/kodein/TypeToken;

    .line 99
    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$Key;

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding;->getCreatedType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/salomonbrys/kodein/TypeTokenKt;->getUnitToken()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    .line 100
    .local v0, "key":Lcom/github/salomonbrys/kodein/Kodein$Key;
    new-instance v1, Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding$1;

    invoke-direct {v1, p0, v0}, Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding$1;-><init>(Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding;Lcom/github/salomonbrys/kodein/Kodein$Key;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0, v1}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->onProviderReady(Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public factoryName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 96
    const-string v0, "eagerSingleton"

    return-object v0
.end method

.method public getCreatedType()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding;->createdType:Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method
