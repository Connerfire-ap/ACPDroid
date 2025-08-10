.class public final enum Lorg/ligi/passandroid/model/pass/PassType;
.super Ljava/lang/Enum;
.source "PassType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/ligi/passandroid/model/pass/PassType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/pass/PassType;",
        "",
        "(Ljava/lang/String;I)V",
        "GENERIC",
        "EVENT",
        "COUPON",
        "BOARDING",
        "LOYALTY",
        "VOUCHER",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ligi/passandroid/model/pass/PassType;

.field public static final enum BOARDING:Lorg/ligi/passandroid/model/pass/PassType;

.field public static final enum COUPON:Lorg/ligi/passandroid/model/pass/PassType;

.field public static final enum EVENT:Lorg/ligi/passandroid/model/pass/PassType;

.field public static final enum GENERIC:Lorg/ligi/passandroid/model/pass/PassType;

.field public static final enum LOYALTY:Lorg/ligi/passandroid/model/pass/PassType;

.field public static final enum VOUCHER:Lorg/ligi/passandroid/model/pass/PassType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/ligi/passandroid/model/pass/PassType;

    new-instance v1, Lorg/ligi/passandroid/model/pass/PassType;

    const-string v2, "GENERIC"

    invoke-direct {v1, v2, v3}, Lorg/ligi/passandroid/model/pass/PassType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ligi/passandroid/model/pass/PassType;->GENERIC:Lorg/ligi/passandroid/model/pass/PassType;

    aput-object v1, v0, v3

    new-instance v1, Lorg/ligi/passandroid/model/pass/PassType;

    const-string v2, "EVENT"

    invoke-direct {v1, v2, v4}, Lorg/ligi/passandroid/model/pass/PassType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ligi/passandroid/model/pass/PassType;->EVENT:Lorg/ligi/passandroid/model/pass/PassType;

    aput-object v1, v0, v4

    new-instance v1, Lorg/ligi/passandroid/model/pass/PassType;

    const-string v2, "COUPON"

    invoke-direct {v1, v2, v5}, Lorg/ligi/passandroid/model/pass/PassType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ligi/passandroid/model/pass/PassType;->COUPON:Lorg/ligi/passandroid/model/pass/PassType;

    aput-object v1, v0, v5

    new-instance v1, Lorg/ligi/passandroid/model/pass/PassType;

    const-string v2, "BOARDING"

    invoke-direct {v1, v2, v6}, Lorg/ligi/passandroid/model/pass/PassType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ligi/passandroid/model/pass/PassType;->BOARDING:Lorg/ligi/passandroid/model/pass/PassType;

    aput-object v1, v0, v6

    new-instance v1, Lorg/ligi/passandroid/model/pass/PassType;

    const-string v2, "LOYALTY"

    invoke-direct {v1, v2, v7}, Lorg/ligi/passandroid/model/pass/PassType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ligi/passandroid/model/pass/PassType;->LOYALTY:Lorg/ligi/passandroid/model/pass/PassType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-instance v2, Lorg/ligi/passandroid/model/pass/PassType;

    const-string v3, "VOUCHER"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lorg/ligi/passandroid/model/pass/PassType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/ligi/passandroid/model/pass/PassType;->VOUCHER:Lorg/ligi/passandroid/model/pass/PassType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/ligi/passandroid/model/pass/PassType;->$VALUES:[Lorg/ligi/passandroid/model/pass/PassType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassType;
    .locals 1

    const-class v0, Lorg/ligi/passandroid/model/pass/PassType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/model/pass/PassType;

    return-object v0
.end method

.method public static values()[Lorg/ligi/passandroid/model/pass/PassType;
    .locals 1

    sget-object v0, Lorg/ligi/passandroid/model/pass/PassType;->$VALUES:[Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v0}, [Lorg/ligi/passandroid/model/pass/PassType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ligi/passandroid/model/pass/PassType;

    return-object v0
.end method
