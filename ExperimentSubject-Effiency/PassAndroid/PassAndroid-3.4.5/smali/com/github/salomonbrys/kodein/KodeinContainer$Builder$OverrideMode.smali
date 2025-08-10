.class abstract enum Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;
.super Ljava/lang/Enum;
.source "KodeinContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OverrideMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$ALLOW_SILENT;,
        Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$ALLOW_EXPLICIT;,
        Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$FORBID;,
        Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0082\u0001\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004H&\u00a2\u0006\u0002\u0010\u0008R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;",
        "",
        "(Ljava/lang/String;I)V",
        "isAllowed",
        "",
        "()Z",
        "must",
        "overrides",
        "(Ljava/lang/Boolean;)Ljava/lang/Boolean;",
        "ALLOW_SILENT",
        "ALLOW_EXPLICIT",
        "FORBID",
        "Companion",
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
.field private static final synthetic $VALUES:[Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

.field public static final enum ALLOW_EXPLICIT:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

.field public static final enum ALLOW_SILENT:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

.field public static final Companion:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$Companion;

.field public static final enum FORBID:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    new-instance v1, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$ALLOW_SILENT;

    const-string v2, "ALLOW_SILENT"

    invoke-direct {v1, v2, v3}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$ALLOW_SILENT;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;->ALLOW_SILENT:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$ALLOW_EXPLICIT;

    const-string v2, "ALLOW_EXPLICIT"

    invoke-direct {v1, v2, v4}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$ALLOW_EXPLICIT;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;->ALLOW_EXPLICIT:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    aput-object v1, v0, v4

    new-instance v1, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$FORBID;

    const-string v2, "FORBID"

    invoke-direct {v1, v2, v5}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$FORBID;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;->FORBID:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;->$VALUES:[Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    new-instance v0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;->Companion:Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode$Companion;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;
    .locals 1

    const-class v0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    return-object v0
.end method

.method public static values()[Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;
    .locals 1

    sget-object v0, Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;->$VALUES:[Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    invoke-virtual {v0}, [Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/salomonbrys/kodein/KodeinContainer$Builder$OverrideMode;

    return-object v0
.end method


# virtual methods
.method public abstract isAllowed()Z
.end method

.method public abstract must(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
