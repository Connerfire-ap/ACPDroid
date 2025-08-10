.class public final Lpermissions/dispatcher/v13/PermissionUtilsV13;
.super Ljava/lang/Object;
.source "PermissionUtilsV13.java"


# static fields
.field private static final V13_ACCESS:Lpermissions/dispatcher/v13/V13Access;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lpermissions/dispatcher/v13/V13Access;

    invoke-direct {v0}, Lpermissions/dispatcher/v13/V13Access;-><init>()V

    sput-object v0, Lpermissions/dispatcher/v13/PermissionUtilsV13;->V13_ACCESS:Lpermissions/dispatcher/v13/V13Access;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getInstance()Lpermissions/dispatcher/v13/V13Access;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lpermissions/dispatcher/v13/PermissionUtilsV13;->V13_ACCESS:Lpermissions/dispatcher/v13/V13Access;

    return-object v0
.end method
