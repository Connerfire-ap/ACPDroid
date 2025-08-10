.class public final Lcom/github/salomonbrys/kodein/KodeinWrappedType;
.super Ljava/lang/Object;
.source "types.kt"

# interfaces
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0013\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/KodeinWrappedType;",
        "Ljava/lang/reflect/Type;",
        "type",
        "(Ljava/lang/reflect/Type;)V",
        "_hashCode",
        "",
        "getType",
        "()Ljava/lang/reflect/Type;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "Func",
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
.field private _hashCode:I

.field private final type:Ljava/lang/reflect/Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->type:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 171
    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/lang/reflect/Type;

    if-nez v1, :cond_1

    .line 177
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 174
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 177
    sget-object v0, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->INSTANCE:Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->type:Ljava/lang/reflect/Type;

    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {v0, v1, p1}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->Equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->_hashCode:I

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->INSTANCE:Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/github/salomonbrys/kodein/KodeinWrappedType$Func;->HashCode(Ljava/lang/reflect/Type;)I

    move-result v0

    iput v0, p0, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->_hashCode:I

    .line 166
    :cond_0
    iget v0, p0, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->_hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KodeinWrappedType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinWrappedType;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
