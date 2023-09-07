//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (1)
//--------------------------------------------------------------------------------
const IID_IGraphicsCaptureItemInterop_Value = Guid.initString("3628e81b-3cac-4c60-b7f4-23ce0e0c3356");
pub const IID_IGraphicsCaptureItemInterop = &IID_IGraphicsCaptureItemInterop_Value;
pub const IGraphicsCaptureItemInterop = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        CreateForWindow: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const IGraphicsCaptureItemInterop,
                window: ?HWND,
                riid: ?*const Guid,
                result: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn(
                self: *const IGraphicsCaptureItemInterop,
                window: ?HWND,
                riid: ?*const Guid,
                result: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        CreateForMonitor: switch (@import("builtin").zig_backend) {
            .stage1 => fn(
                self: *const IGraphicsCaptureItemInterop,
                monitor: ?HMONITOR,
                riid: ?*const Guid,
                result: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn(
                self: *const IGraphicsCaptureItemInterop,
                monitor: ?HMONITOR,
                riid: ?*const Guid,
                result: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IGraphicsCaptureItemInterop_CreateForWindow(self: *const T, window: ?HWND, riid: ?*const Guid, result: ?*?*anyopaque) callconv(.Inline) HRESULT {
            return @as(*const IGraphicsCaptureItemInterop.VTable, @ptrCast(self.vtable)).CreateForWindow(@as(*const IGraphicsCaptureItemInterop, @ptrCast(self)), window, riid, result);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IGraphicsCaptureItemInterop_CreateForMonitor(self: *const T, monitor: ?HMONITOR, riid: ?*const Guid, result: ?*?*anyopaque) callconv(.Inline) HRESULT {
            return @as(*const IGraphicsCaptureItemInterop.VTable, @ptrCast(self.vtable)).CreateForMonitor(@as(*const IGraphicsCaptureItemInterop, @ptrCast(self)), monitor, riid, result);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../../../zig.zig").unicode_mode) {
    .ansi => struct {
    },
    .wide => struct {
    },
    .unspecified => if (@import("builtin").is_test) struct {
    } else struct {
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (5)
//--------------------------------------------------------------------------------
const Guid = @import("../../../zig.zig").Guid;
const HMONITOR = @import("../../../graphics/gdi.zig").HMONITOR;
const HRESULT = @import("../../../foundation.zig").HRESULT;
const HWND = @import("../../../foundation.zig").HWND;
const IUnknown = @import("../../../system/com.zig").IUnknown;

test {
    @setEvalBranchQuota(
        comptime @import("std").meta.declarations(@This()).len * 3
    );

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        _ = @field(@This(), decl.name);
    }
}