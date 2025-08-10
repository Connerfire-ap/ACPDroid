.class public interface abstract Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;
.super Ljava/lang/Object;
.source "Binding.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/bindings/Binding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/salomonbrys/kodein/bindings/Binding",
        "<",
        "Lkotlin/Unit;",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002H\u00010\u0003J1\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u00132\u0006\u0010\u0014\u001a\u00020\u0004H\u0016\u00a2\u0006\u0002\u0010\u0015J)\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00020\u00162\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0013H&\u00a2\u0006\u0002\u0010\u0017R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;",
        "T",
        "",
        "Lcom/github/salomonbrys/kodein/bindings/Binding;",
        "",
        "argType",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "getArgType",
        "()Lcom/github/salomonbrys/kodein/TypeToken;",
        "description",
        "",
        "getDescription",
        "()Ljava/lang/String;",
        "fullDescription",
        "getFullDescription",
        "getInstance",
        "kodein",
        "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
        "key",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "arg",
        "(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/lang/Object;",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
        "(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)Ljava/lang/Object;",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# virtual methods
.method public abstract getArgType()Lcom/github/salomonbrys/kodein/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getFullDescription()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/lang/Object;
    .param p1    # Lcom/github/salomonbrys/kodein/bindings/BindingKodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<",
            "Lkotlin/Unit;",
            "+TT;>;",
            "Lkotlin/Unit;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)Ljava/lang/Object;
    .param p1    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<",
            "Lkotlin/Unit;",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
