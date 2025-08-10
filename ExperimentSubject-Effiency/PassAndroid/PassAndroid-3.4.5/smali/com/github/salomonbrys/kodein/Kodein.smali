.class public interface abstract Lcom/github/salomonbrys/kodein/Kodein;
.super Ljava/lang/Object;
.source "Kodein.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/KodeinAwareBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/salomonbrys/kodein/Kodein$DependencyLoopException;,
        Lcom/github/salomonbrys/kodein/Kodein$NotFoundException;,
        Lcom/github/salomonbrys/kodein/Kodein$OverridingException;,
        Lcom/github/salomonbrys/kodein/Kodein$Bind;,
        Lcom/github/salomonbrys/kodein/Kodein$Key;,
        Lcom/github/salomonbrys/kodein/Kodein$KodeinDsl;,
        Lcom/github/salomonbrys/kodein/Kodein$Builder;,
        Lcom/github/salomonbrys/kodein/Kodein$Module;,
        Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;,
        Lcom/github/salomonbrys/kodein/Kodein$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008f\u0018\u0000 \u001b2\u00020\u0001:\t\u0019\u001a\u001b\u001c\u001d\u001e\u001f !JN\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\u000c0\n\"\u0004\u0008\u0000\u0010\u000b\"\u0008\u0008\u0001\u0010\u000c*\u00020\r2\u000e\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u000b0\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000f2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\rH\u0016JP\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\u000c\u0018\u00010\n\"\u0004\u0008\u0000\u0010\u000b\"\u0008\u0008\u0001\u0010\u000c*\u00020\r2\u000e\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u000b0\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000f2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\rH\u0016J1\u0010\u0013\u001a\u0002H\u000c\"\u0008\u0008\u0000\u0010\u000c*\u00020\r2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000f2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0002\u0010\u0014J3\u0010\u0015\u001a\u0004\u0018\u0001H\u000c\"\u0008\u0008\u0000\u0010\u000c*\u00020\r2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000f2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0002\u0010\u0014J2\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u0017\"\u0008\u0008\u0000\u0010\u000c*\u00020\r2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000f2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\rH\u0016J4\u0010\u0018\u001a\n\u0012\u0004\u0012\u0002H\u000c\u0018\u00010\u0017\"\u0008\u0008\u0000\u0010\u000c*\u00020\r2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000f2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\rH\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\""
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/Kodein;",
        "Lcom/github/salomonbrys/kodein/KodeinAwareBase;",
        "container",
        "Lcom/github/salomonbrys/kodein/KodeinContainer;",
        "getContainer",
        "()Lcom/github/salomonbrys/kodein/KodeinContainer;",
        "kodein",
        "getKodein",
        "()Lcom/github/salomonbrys/kodein/Kodein;",
        "Factory",
        "Lkotlin/Function1;",
        "A",
        "T",
        "",
        "argType",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "type",
        "tag",
        "FactoryOrNull",
        "Instance",
        "(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;",
        "InstanceOrNull",
        "Provider",
        "Lkotlin/Function0;",
        "ProviderOrNull",
        "Bind",
        "Builder",
        "Companion",
        "DependencyLoopException",
        "Key",
        "KodeinDsl",
        "Module",
        "NotFoundException",
        "OverridingException",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field public static final Companion:Lcom/github/salomonbrys/kodein/Kodein$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/Kodein$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/salomonbrys/kodein/Kodein;->Companion:Lcom/github/salomonbrys/kodein/Kodein$Companion;

    return-void
.end method


# virtual methods
.method public abstract Factory(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .param p1    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TA;>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract FactoryOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .param p1    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TA;>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract InstanceOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract Provider(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .param p1    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract ProviderOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .param p1    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getKodein()Lcom/github/salomonbrys/kodein/Kodein;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
